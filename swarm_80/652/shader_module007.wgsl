struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(11760u, 0u), vec2<i32>(0i, -1i));

var<private> global1: vec3<u32> = vec3<u32>(0u, 4294967295u, 0u);

var<private> global2: array<Struct_1, 32>;

var<private> global3: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(15193i, -9976i), vec2<i32>(0i, 0i), vec2<i32>(1i, 24917i), vec2<i32>(3251i, -25144i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(19552i, -607i), vec2<i32>(-1i, -12025i), vec2<i32>(37986i, -21617i));

var<private> global4: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    global4 = ~(~(select(~global1.x, _wgslsmith_sub_u32(1u, global1.x), global0.a.x) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_add_u32(u_input.a, global0.b.x)) % 32u)));
    global1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~global0.b.x << (firstLeadingBit(global0.b.x) % 32u), _wgslsmith_clamp_u32(global0.b.x << (56107u % 32u), 4294967295u >> (global0.b.x % 32u), u_input.a)), ~(_wgslsmith_mult_u32(39800u, global1.x) ^ countOneBits(897u))), ~(~1u) & abs(_wgslsmith_add_u32(global1.x, 10253u)), _wgslsmith_mult_u32(~((u_input.a << (global0.b.x % 32u)) ^ ~global0.b.x), firstLeadingBit(countOneBits(max(u_input.a, 2793u)))));
    global0 = global2[_wgslsmith_index_u32(firstLeadingBit(countOneBits(global1.x << (~1u % 32u))), 32u)];
    let var_0 = Struct_2(true, global2[_wgslsmith_index_u32(min(21110u, u_input.a), 32u)], vec2<u32>(49136u, global1.x), !global0.a.x);
    let var_1 = Struct_1(!var_0.b.a, vec2<u32>(_wgslsmith_div_u32(1u, global0.b.x), _wgslsmith_sub_u32(firstTrailingBit(~1838u), max(global0.b.x, 1u))), -abs(global0.c));
    return u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = Struct_2(arg_0.d, Struct_1(!global0.a, vec2<u32>(65684u, ~global1.x >> (func_3(-1635f) % 32u)), arg_3.a.b.c << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), abs(reverseBits(~vec2<u32>(arg_1, arg_3.c)) << (global0.b % vec2<u32>(32u))), global0.a.x);
    let var_1 = var_0.b;
    let var_2 = u_input.a;
    var var_3 = ~(-(~countOneBits(vec3<i32>(-42517i, var_1.c.x, arg_0.b.c.x))));
    global3 = array<vec2<i32>, 8>();
    return ~(~vec3<u32>(~1u, 1u, arg_1) << (vec3<u32>(~var_0.c.x, 74677u, u_input.a) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    global3 = array<vec2<i32>, 8>();
    global2 = array<Struct_1, 32>();
    global1 = select(vec3<u32>(4294967295u >> ((global1.x << (2602u % 32u)) % 32u), ~global1.x, 4294967295u << (global0.b.x % 32u)), func_2(Struct_2(global0.a.x, global2[_wgslsmith_index_u32(39874u, 32u)], global1.xy, true), 25685u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1548f, -1464f, -2216f), vec3<f32>(1000f, -2505f, -1015f), vec3<bool>(global0.a.x, global0.a.x, global0.a.x)))), Struct_3(Struct_2(false, Struct_1(global0.a, global0.b, arg_0), vec2<u32>(global1.x, global0.b.x), false), -406f, u_input.a)), any(vec3<bool>(all(vec3<bool>(global0.a.x, global0.a.x, false)), select(global0.a.x, false, true), true))) ^ ~(~max(vec3<u32>(global1.x, 4294967295u, 97152u), vec3<u32>(0u, 0u, global1.x) | vec3<u32>(global1.x, 4294967295u, 4756u)));
    var var_0 = global2[_wgslsmith_index_u32(~(~(~global1.x)), 32u)];
    let var_1 = select(vec3<i32>(~arg_0.x, min(max(global0.c.x, var_0.c.x), min(u_input.b, -6301i)), _wgslsmith_add_i32(var_0.c.x, var_0.c.x)) >> (func_2(Struct_2(var_0.a.x, global2[_wgslsmith_index_u32(var_0.b.x, 32u)], select(var_0.b, global0.b, var_0.a.wz), true), 4294967295u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1396f, 261f, 1330f) + vec3<f32>(442f, 1000f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(682f, -1649f, -459f)), vec3<bool>(true, global0.a.x, var_0.a.x))), Struct_3(Struct_2(true, Struct_1(vec4<bool>(var_0.a.x, global0.a.x, false, var_0.a.x), vec2<u32>(u_input.a, global0.b.x), arg_0), vec2<u32>(11280u, var_0.b.x), global0.a.x), _wgslsmith_f_op_f32(floor(379f)), var_0.b.x)) % vec3<u32>(32u)), vec3<i32>(39339i, 2147483647i, -(~(~u_input.b))), global0.a.yyz);
    return select(!global0.a, !select(global0.a, var_0.a, global0.a.x), select(var_0.a, select(vec4<bool>(any(var_0.a), 4294967295u != u_input.a, global0.a.x, true), !(!vec4<bool>(var_0.a.x, true, global0.a.x, true)), !select(var_0.a, var_0.a, global0.a.x)), ~2147483647i != abs(arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 0u;
    global3 = array<vec2<i32>, 8>();
    var var_0 = !(!(global0.a.x | true));
    var var_1 = !select(select(global0.a, vec4<bool>(!global0.a.x, true, true, !global0.a.x), global0.a.x), select(func_1(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global0.c.x), vec2<i32>(1i, -2147483647i))), vec4<bool>(select(true, false, global0.a.x), true, any(vec4<bool>(global0.a.x, false, false, global0.a.x)), global0.a.x), global0.a.x), false);
    var var_2 = Struct_1(select(select(!global0.a, !func_1(global3[_wgslsmith_index_u32(global0.b.x, 8u)]), var_1.x), !vec4<bool>(var_1.x, var_1.x, true, true), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(15747u, u_input.a)) > _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, 0u) ^ vec3<u32>(45156u, global1.x, u_input.a), ~vec3<u32>(global0.b.x, global1.x, 33623u))), vec2<u32>(u_input.a, ~u_input.a), vec2<i32>(~u_input.b, -31557i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(31123i, min(-6036i, _wgslsmith_mult_i32(var_2.c.x, u_input.b)) << ((global1.x ^ global0.b.x) % 32u), -u_input.b), vec2<u32>(4294967295u, global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1616f - -256f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(715f - -389f) * -471f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1123f - 379f), _wgslsmith_f_op_f32(step(-2216f, 1141f))))), vec3<i32>(-2147483647i << ((global1.x >> (u_input.a % 32u)) % 32u), 0i, u_input.b) << (~(~vec3<u32>(64253u, global1.x, global0.b.x)) % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(578f, 1105f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-841f, -144f), vec2<f32>(599f, -476f))), vec2<f32>(1201f, -850f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1518f, -167f), vec2<f32>(-1202f, 1070f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(713f, 513f) - vec2<f32>(-419f, 633f)))))));
}

