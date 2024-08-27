struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<u32>(11061u, 56746u), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -15989i, i32(-2147483648)))));

var<private> global1: i32 = -3723i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = reverseBits(vec2<i32>(global0.a.b.a.x, global0.a.b.a.x));
    let var_1 = global0.a.b;
    var var_2 = 1273f;
    global0 = Struct_3(Struct_2(vec2<u32>(min(0u, global0.a.a.x ^ global0.a.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(36237u, global0.a.a.x, 103153u), ~vec3<u32>(22015u, 15302u, 111749u))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 30003i, 26452i, 2147483647i) & vec4<i32>(global0.a.b.a.x, var_0.x, var_0.x, global0.a.b.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-32071i, var_0.x, var_0.x, global0.a.b.a.x), u_input.c)))));
    global0 = Struct_3(global0.a);
    return all(vec3<bool>(false, !all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1959f, -1755f, -109f, 591f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-157f, -404f, -332f, 730f))))));
    var var_1 = vec3<bool>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(arg_0.x, 92050u), 48920u) < ~((arg_2.x ^ 7554u) ^ 4294967295u), !(!all(vec3<bool>(true, true, true))), !(false != (func_3() & (2138f != var_0.x))));
    let var_2 = global0.a;
    var_1 = select(vec3<bool>(all(select(select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x)), select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, true, var_1.x, false), var_1.x), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, true), var_1.x))), var_1.x, all(var_1.yz)), select(select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, true), var_1.x && false), !(!vec3<bool>(var_1.x, false, var_1.x)), !(!var_1.x)), !(!vec3<bool>(false, var_1.x, var_1.x)), all(select(vec2<bool>(var_1.x, false), !var_1.xx, vec2<bool>(false, false)))), var_1.x);
    var var_3 = _wgslsmith_f_op_f32(abs(-1045f));
    return global0.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global1 = ~(~(-2147483647i));
    var var_0 = global0.a.b;
    var var_1 = func_2(abs(~(vec3<u32>(4294967295u, global0.a.a.x, global0.a.a.x) ^ vec3<u32>(global0.a.a.x, 4294967295u, 20119u)) >> (~(vec3<u32>(120290u, global0.a.a.x, 4294967295u) | vec3<u32>(global0.a.a.x, global0.a.a.x, 4294967295u)) % vec3<u32>(32u))), global0.a.a.x, vec3<u32>(~(_wgslsmith_mult_u32(51501u, 3551u) >> (global0.a.a.x % 32u)), 4294967295u, global0.a.a.x), 0u);
    var var_2 = func_2(vec3<u32>(_wgslsmith_div_u32(31501u, 1u), ~1u, abs(~global0.a.a.x >> (1324u % 32u))), ~_wgslsmith_sub_u32(global0.a.a.x, firstTrailingBit(var_1.a.x)), vec3<u32>(_wgslsmith_div_u32(1u, (var_1.a.x | 33368u) >> (~global0.a.a.x % 32u)), countOneBits(_wgslsmith_div_u32(74369u, 4294967295u)), var_1.a.x), firstTrailingBit(~(~(~var_1.a.x))));
    var var_3 = select(select(vec2<bool>(false, _wgslsmith_dot_vec2_i32(arg_3.a.wz, global0.a.b.a.wz) != var_1.b.a.x), select(arg_0.xz, arg_0.zy, arg_0.xx), select(vec2<bool>(arg_3.a.x == var_1.b.a.x, arg_0.x | arg_0.x), arg_0.xy, select(arg_0.zy, select(vec2<bool>(true, arg_0.x), arg_0.xy, false), vec2<bool>(arg_0.x, false)))), vec2<bool>(all(vec3<bool>(true, arg_0.x, select(true, arg_0.x, false))), arg_0.x && (any(vec4<bool>(arg_0.x, arg_0.x, false, false)) | any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)))), vec2<bool>(select(true, (u_input.b.x | 21113i) <= _wgslsmith_mult_i32(u_input.a.x, -2147483647i), arg_0.x), false));
    return func_2(reverseBits(vec3<u32>(var_2.a.x, var_1.a.x, 36865u)), ~(~(~var_1.a.x)), abs(vec3<u32>(firstTrailingBit(global0.a.a.x), 0u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(4294967295u, 34360u)), 101659u))), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1059f;
    let var_1 = Struct_3(func_1(select(vec3<bool>(all(vec3<bool>(true, true, false)), 0u == global0.a.a.x, true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), true, true)), _wgslsmith_clamp_i32(13789i, 0i, ~(-4963i)), 0i, global0.a.b));
    var_0 = -1402f;
    global1 = u_input.b.x;
    var var_2 = ~4294967295u;
    var var_3 = select(!vec3<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)), true, !(-1i != var_1.a.b.a.x)), vec3<bool>(true, func_3(), _wgslsmith_sub_u32(0u, global0.a.a.x) <= var_1.a.a.x), true);
    var_0 = 1f;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b.zx ^ u_input.b.yy, var_1.a.b.a.xx));
}

