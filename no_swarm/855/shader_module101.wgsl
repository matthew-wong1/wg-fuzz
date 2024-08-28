struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(1u, 14202u, 81677u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 2757u, 42087u)), Struct_1(vec4<u32>(1194u, 38018u, 4294967295u, 13863u)), Struct_1(vec4<u32>(4294967295u, 35752u, 7919u, 4933u)), Struct_1(vec4<u32>(1u, 85827u, 1u, 19218u)), Struct_1(vec4<u32>(20078u, 64246u, 34055u, 0u)), Struct_1(vec4<u32>(17356u, 4294967295u, 56652u, 4294967295u)), Struct_1(vec4<u32>(0u, 63190u, 0u, 4294967295u)), Struct_1(vec4<u32>(0u, 95036u, 81930u, 627u)), Struct_1(vec4<u32>(40304u, 10255u, 0u, 65200u)), Struct_1(vec4<u32>(6104u, 1u, 18644u, 39984u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> vec2<i32> {
    var var_0 = true;
    var var_1 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-_wgslsmith_mod_i32(-18016i, -11627i), ~(-2147483647i), ~1i)), vec3<i32>(14159i, -_wgslsmith_clamp_i32(max(0i, -2147483647i), 37768i, select(0i, 1i, true)), firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(18902i, 18620i, -39154i), vec3<i32>(1i, -33073i, -10874i)))));
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_add_i32(0i, -21480i), ~6855i), vec3<i32>(max(~7418i, _wgslsmith_mod_i32(2147483647i, 1i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(20806i, -3792i, -7873i), vec3<i32>(-1i, -1i, -33359i)), 1i)) >> (_wgslsmith_clamp_u32(0u, 100460u, arg_1) % 32u);
    let var_2 = reverseBits(arg_1);
    var var_3 = false;
    return vec2<i32>(-34851i, i32(-1i) * -(~_wgslsmith_mult_i32(1i, -2147483647i)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = arg_1.x;
    let var_1 = !vec4<bool>(true, true, false, arg_2);
    var var_2 = select(vec3<bool>(arg_2, !(arg_3.a.a.x >= u_input.b) == var_1.x, select(true, (79949u & u_input.b) != ~arg_0.a, true)), select(!vec3<bool>(true, all(var_1.wyy), false), vec3<bool>(true, var_1.x, false), vec3<bool>(true, true, arg_2)), !any(var_1.xww));
    var_0 = 26302i;
    let var_3 = ~arg_3.a.a;
    return !vec3<bool>(all(vec3<bool>(true, -2147483647i >= arg_1.x, !arg_2)), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(_wgslsmith_mult_u32(u_input.a, 45590u), 44258u, 4294967295u, u_input.b | ~u_input.b));
    let var_1 = select(select(~select(-vec2<i32>(-17092i, -10192i), vec2<i32>(1i, 1i), any(vec2<bool>(false, false))), -(~vec2<i32>(1i, 1i)), vec2<bool>(true, true)), -func_1(Struct_3(global0[_wgslsmith_index_u32(0u, 11u)], 347f), abs(43290u)) & vec2<i32>(1i, 2147483647i), !any(select(func_2(Struct_4(u_input.a), vec2<i32>(23820i, -2147483647i), false, Struct_2(Struct_1(var_0))), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(var_1.x << ((_wgslsmith_mult_u32(92791u, 0u) & _wgslsmith_mult_u32(u_input.a, u_input.b)) % 32u), var_1.x), firstTrailingBit(-1i), max(-2147483647i, -2340i));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(var_1.x, _wgslsmith_mod_i32(var_1.x, -1i), var_2.x, select(2147483647i, var_2.x, false))) >> (((~vec4<u32>(64435u, 4294967295u, u_input.b, 1u) ^ var_0) | abs(~vec4<u32>(u_input.a, 0u, 4945u, 38651u))) % vec4<u32>(32u)), _wgslsmith_div_vec3_u32(var_0.wwx, firstLeadingBit(vec3<u32>(0u, 1u, var_0.x) | var_0.yzw) << (firstLeadingBit(vec3<u32>(32709u, 4294967295u, u_input.b)) % vec3<u32>(32u))), ~(~var_0.zw) << (var_0.xx % vec2<u32>(32u)), -vec4<i32>(0i, ~var_2.x, ~min(var_1.x, var_1.x), func_1(Struct_3(global0[_wgslsmith_index_u32(u_input.b, 11u)], 510f), _wgslsmith_mult_u32(var_0.x, var_0.x)).x));
}

