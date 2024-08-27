struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = Struct_1(true, vec4<i32>(max(max(i32(-1i) * -1i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.a), 15u)]), 1i), _wgslsmith_sub_i32(~u_input.c, -1i), abs(-7716i), arg_0.a), select(!vec2<bool>(arg_0.a > -2147483647i, !arg_1), select(!(!vec2<bool>(arg_1, arg_1)), vec2<bool>(u_input.b.x == 0u, false), select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, arg_1), false & arg_1)), vec2<bool>(arg_1, arg_1 | true)), select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, arg_1, arg_1, true), arg_1), !vec4<bool>(false, arg_1, true, arg_1), all(vec3<bool>(arg_1, true, false))), select(select(!vec4<bool>(arg_1, true, arg_1, true), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), !vec4<bool>(arg_1, arg_1, true, false)), select(select(vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, true, arg_1, arg_1)), !vec4<bool>(arg_1, arg_1, true, arg_1), arg_1), vec4<bool>(true, u_input.a == u_input.b.x, arg_1, true)), true));
    let var_1 = _wgslsmith_sub_i32(var_0.b.x, ~(~(_wgslsmith_sub_i32(var_0.b.x, -2147483647i) >> (_wgslsmith_div_u32(u_input.a, 17183u) % 32u))));
    var var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(u_input.c), -(~global0[_wgslsmith_index_u32(u_input.a, 15u)]), -727i), abs(~(~var_0.b.xxw))), vec3<i32>(abs(2147483647i | ~arg_0.a), (i32(-1i) * -31302i) << (u_input.a % 32u), arg_0.a), _wgslsmith_clamp_vec3_i32(max(var_0.b.wzz, ~(var_0.b.wzy | var_0.b.xzx)), var_0.b.xwz, abs(~countOneBits(var_0.b.zwy))));
    let var_3 = ~vec4<i32>(abs(2644i), -10932i, _wgslsmith_sub_i32(-var_1, firstLeadingBit(~(-2147483647i))), _wgslsmith_mod_i32(u_input.c, 1i) | (i32(-1i) * -6226i));
    var var_4 = var_0;
    return _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(~firstTrailingBit(var_4.b.xzw), vec3<i32>(arg_0.a, -32376i, 1i))), vec3<i32>(_wgslsmith_mod_i32(max(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 0i), 30404i) | _wgslsmith_sub_i32(i32(-1i) * -45591i, -1i), -2147483647i, -var_1 >> (u_input.a % 32u)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    let var_0 = Struct_1(false, vec4<i32>(arg_1.a, -1i, arg_1.a, func_3(Struct_2(firstLeadingBit(arg_2.a)), true)), select(select(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), true), !(!vec2<bool>(arg_0, false)), arg_0), vec2<bool>(~u_input.b.x <= abs(u_input.a), false), true), select(!select(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, arg_0, false, false)), select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, true), arg_0), true), vec4<bool>(!arg_0 != true, arg_0, arg_0, true), true));
    let var_1 = arg_1;
    let var_2 = countOneBits(vec4<u32>(50493u, 1u, firstTrailingBit(51737u), _wgslsmith_clamp_u32(67131u, u_input.b.x, 34925u) & 0u)) ^ ~select(vec4<u32>(~u_input.b.x, 1u, u_input.a, ~28858u), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.b.x, 0u, 0u)), vec4<u32>(u_input.a, 6133u, 0u, u_input.b.x)), true);
    return Struct_1(all(!(!select(vec2<bool>(var_0.c.x, var_0.d.x), var_0.d.yz, vec2<bool>(true, true)))), -_wgslsmith_sub_vec4_i32(var_0.b, ~var_0.b), vec2<bool>(658f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-592f, -1830f)))), all(!vec3<bool>(true, var_0.d.x, var_0.c.x))), select(var_0.d, select(var_0.d, var_0.d, select(vec4<bool>(arg_0, var_0.c.x, false, var_0.d.x), vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, var_0.c.x, var_0.a, arg_0))), min(~1u, u_input.a) <= 37876u));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_1 {
    global0 = array<i32, 15>();
    let var_0 = Struct_2(arg_0.b.x);
    let var_1 = func_2(all(vec4<bool>(select(true, all(vec3<bool>(arg_0.c.x, false, true)), arg_0.d.x && false), func_2(false, var_0, var_0).c.x, true != arg_1, any(func_2(arg_0.a, Struct_2(arg_2), var_0).d))), Struct_2(~2147483647i), var_0);
    var var_2 = -(_wgslsmith_add_i32(_wgslsmith_div_i32(0i ^ arg_2, ~2147483647i), _wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x) & var_0.a) ^ max(0i, 2147483647i));
    let var_3 = var_0;
    return Struct_1(true, arg_0.b, !vec2<bool>(func_2(arg_1, Struct_2(2147483647i), Struct_2(-37942i)).c.x, true), var_1.d);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = array<i32, 15>();
    let var_0 = arg_0;
    let var_1 = func_4(func_2(var_0.a != ~(-24477i << (0u % 32u)), Struct_2(55798i), var_0), arg_1.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_0.a, arg_1.b.x) >> (firstTrailingBit(vec3<u32>(u_input.b.x, u_input.a, 5446u)) % vec3<u32>(32u)), arg_1.b.wzy), arg_0.a, -func_2(arg_1.a, arg_2, arg_2).b.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2345f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(441f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -236f) + _wgslsmith_f_op_f32(max(-304f, 1487f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-434f, -1304f)))));
    let var_3 = -14058i;
    return _wgslsmith_sub_u32(44854u | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b ^ vec3<u32>(48620u, u_input.b.x, 4294967295u), vec3<u32>(2632u, 4294967295u, 53601u)), ~vec3<u32>(u_input.a, 65063u, 38429u)), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_u32(~u_input.b, ~vec3<u32>(~4294967295u, 60806u, ~func_1(Struct_2(0i), Struct_1(false, vec4<i32>(0i, u_input.c, -27266i, 148i), vec2<bool>(true, false), vec4<bool>(false, false, true, true)), Struct_2(u_input.c))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-641f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(633f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = Struct_2(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), select(vec2<i32>(-1i, 13161i), vec2<i32>(global0[_wgslsmith_index_u32(36197u, 15u)], u_input.c), vec2<bool>(false, true)))));
    var_2 = Struct_2(~(-2147483647i));
    var_0 = abs(~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_0.x);
}

