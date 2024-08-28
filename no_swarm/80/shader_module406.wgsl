struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false));

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<vec2<f32>, 4>;

var<private> global3: Struct_3 = Struct_3(vec4<i32>(1i, 1i, i32(-2147483648), -59119i), vec3<u32>(22835u, 40445u, 4294967295u), 1u, vec4<f32>(1143f, 1264f, -1374f, -510f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = arg_0.d.x;
    let var_1 = Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(global3.a.xzy, ~global3.a.yxz) & reverseBits(~global3.a.x), _wgslsmith_dot_vec4_i32(global3.a, vec4<i32>(2147483647i, -1i, global3.a.x, 2147483647i)) >> (~select(u_input.a.x, 83202u, true) % 32u), -2147483647i, ~_wgslsmith_clamp_i32(-1i, global3.a.x, firstLeadingBit(-11584i))), vec3<u32>(global3.b.x, ~(~_wgslsmith_mod_u32(9898u, u_input.a.x)), min(u_input.a.x, ~(~arg_0.b.x))), arg_0.b.x, _wgslsmith_f_op_vec4_f32(global3.d + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global3.d), vec4<f32>(global3.d.x, arg_0.a.x, global3.d.x, global3.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-574f, arg_0.a.x, arg_0.a.x, arg_0.a.x) - global3.d)))));
    let var_2 = var_1;
    var var_3 = arg_0;
    var var_4 = 17344u;
    return var_2;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> Struct_1 {
    global0 = array<vec4<bool>, 5>();
    var var_0 = -45033i;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.d.x, 826f, -1008f, global3.d.x), _wgslsmith_f_op_vec4_f32(global3.d * arg_1.d)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(172f - arg_1.d.x), -855f), 470f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1467f, -1055f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(301f, 136f)))))), arg_1.d));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-1466f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-734f, 256f) + _wgslsmith_f_op_f32(-global3.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_1.d.x, arg_1.d.x, false)), 1025f))), global3.d.x)));
    return global1[_wgslsmith_index_u32(~1u, 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = ~4294967295u;
    var var_1 = -(~1i);
    let var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_f_op_f32(-479f - global3.d.x) <= _wgslsmith_f_op_f32(f32(-1f) * -670f), all(global0[_wgslsmith_index_u32(1u, 5u)]), false != any(vec3<bool>(false, true, false))), any(vec4<bool>(true, true, true, true))), vec3<bool>(false, true, false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !all(vec2<bool>(false, true))), !vec3<bool>(false, true, all(vec3<bool>(false, false, true)))));
    global0 = array<vec4<bool>, 5>();
    var_1 = _wgslsmith_clamp_i32(global3.a.x, global3.a.x, abs(37573i));
    return global3.a;
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global3 = Struct_3(func_4(func_3(true, func_2(Struct_1(global2[_wgslsmith_index_u32(1u, 4u)], vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, 2896u), global2[_wgslsmith_index_u32(global3.c, 4u)], vec4<u32>(arg_0.x, global3.c, 4294967295u, arg_0.x))), 0i, global3.a.x << (u_input.a.x % 32u)), _wgslsmith_sub_vec2_u32(u_input.a.yz, func_2(Struct_1(global3.d.yx, vec4<u32>(global3.c, arg_0.x, global3.c, 111946u), global3.d.xy, vec4<u32>(9797u, u_input.a.x, 4294967295u, 13611u))).b.yx)), vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(~0u, u_input.a.x | 4294967295u)), _wgslsmith_mod_u32(~(~7080u), arg_0.x), 55590u), ~(~func_3(false, func_2(global1[_wgslsmith_index_u32(24008u, 32u)]), -14784i, -71027i).b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1857f + 478f), global3.d.x)), global3.d.x, _wgslsmith_f_op_f32(f32(-1f) * -860f), global3.d.x)));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(global3.d.x + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-global3.d.x))), func_3(true, Struct_3(_wgslsmith_clamp_vec4_i32(select(global3.a, vec4<i32>(global3.a.x, 2147483647i, 51077i, global3.a.x), vec4<bool>(true, false, false, false)), global3.a, _wgslsmith_mult_vec4_i32(global3.a, global3.a)), ~(~vec3<u32>(21624u, 1u, arg_0.x)), global3.b.x | 5312u, vec4<f32>(2200f, global3.d.x, global3.d.x, _wgslsmith_f_op_f32(global3.d.x - 352f))), global3.a.x, _wgslsmith_clamp_i32(func_4(Struct_1(vec2<f32>(global3.d.x, global3.d.x), vec4<u32>(0u, arg_0.x, 1u, 4294967295u), global2[_wgslsmith_index_u32(global3.b.x, 4u)], vec4<u32>(28594u, 11381u, 1u, 1u)), arg_0.zz).x, 0i, 1i)), Struct_1(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(arg_0.x, 4u)] + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d.xw))), vec4<u32>(~(100555u << (u_input.a.x % 32u)), global3.c, 0u, ~(~0u)), _wgslsmith_f_op_vec2_f32(-global3.d.zw), ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.c, arg_0.x, global3.c, global3.b.x), vec4<u32>(69343u, 17261u, arg_0.x, global3.c)))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 25422u, global3.c, 4294967295u), select(select(vec4<u32>(0u, 4294967295u, 39342u, 0u), vec4<u32>(6823u, u_input.a.x, 4294967295u, global3.c), true), vec4<u32>(54645u, global3.b.x, u_input.a.x, arg_0.x), global0[_wgslsmith_index_u32(arg_0.x, 5u)])), 71952u), 32u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1115f)));
    let var_2 = vec4<u32>(global3.b.x, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(13333u << (global3.b.x % 32u), abs(global3.b.x), func_3(false, Struct_3(global3.a, var_0.b.b.wzz, u_input.a.x, vec4<f32>(-1444f, global3.d.x, -103f, -282f)), global3.a.x, -1i).b.x), abs(~arg_0.x)), func_2(func_3(true, func_2(global1[_wgslsmith_index_u32(abs(u_input.a.x), 32u)]), abs(abs(global3.a.x)), global3.a.x)).c, abs(~u_input.a.x));
    var var_3 = Struct_3(_wgslsmith_sub_vec4_i32(global3.a, vec4<i32>(0i, min(global3.a.x, global3.a.x), global3.a.x, 1i)) & func_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.d.x, -566f), var_0.b.c)), vec4<u32>(arg_0.x, var_2.x, u_input.a.x, 1u), vec2<f32>(var_0.d.a.x, global3.d.x), func_3(true, Struct_3(vec4<i32>(global3.a.x, global3.a.x, 1i, 18297i), arg_0, 25090u, global3.d), 3318i, 22392i).b)).a, reverseBits(~min(var_0.d.d.xyx | vec3<u32>(1u, var_0.d.d.x, var_2.x), var_2.xyx)), 106511u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 2250f, var_0.a)))) * vec4<f32>(global3.d.x, -1640f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f)), 702f)));
    return 28888u >> (global3.c % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(global3.a >> (reverseBits(~vec4<u32>(global3.b.x, 31539u, global3.b.x, 4294967295u)) % vec4<u32>(32u)), ~abs((vec3<u32>(global3.c, global3.c, 32955u) ^ vec3<u32>(u_input.a.x, global3.b.x, 4575u)) & abs(vec3<u32>(4294967295u, 53604u, global3.b.x))), ~(~(~(~33333u))), _wgslsmith_f_op_vec4_f32(min(global3.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global3.d.x)), _wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(-global3.d.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(func_1(global3.b)), ~4893u, u_input.a.x, global3.c), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.d.x)) - -698f), _wgslsmith_f_op_f32(select(198f, -311f, true)), -997f), vec3<f32>(global3.d.x, global3.d.x, -2230f))), vec4<f32>(_wgslsmith_f_op_f32(select(global3.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-474f, -868f))), true)), global3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-169f, global3.d.x)), global3.d.x), abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x >> (reverseBits(global3.b.x) % 32u), 47218u)));
}

