struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: Struct_3 = Struct_3(true, vec2<f32>(-389f, 1300f), Struct_1(vec4<bool>(true, false, false, true), -59754i, vec2<f32>(-408f, 277f)));

var<private> global3: array<f32, 26> = array<f32, 26>(600f, 1032f, -177f, -1905f, 589f, -1760f, -568f, -1158f, 441f, 750f, 776f, 341f, 551f, -147f, -310f, 649f, -984f, -421f, -1000f, -498f, 1072f, -2239f, -992f, 786f, 776f, 877f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = !(!vec2<bool>(all(global2.c.a.yz) | global2.a, !(global2.a != global2.a)));
    var var_1 = min(vec3<u32>(u_input.a, _wgslsmith_mod_u32(0u, u_input.a), select(u_input.a, _wgslsmith_mod_u32(0u | u_input.a, _wgslsmith_mod_u32(u_input.a, 43026u)), all(vec3<bool>(var_0.x, var_0.x, false)))), ~_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 50621u), vec3<u32>(u_input.b.x, 0u, u_input.a)), ~(~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x))));
    var_1 = firstLeadingBit(~vec3<u32>(select(99385u, _wgslsmith_div_u32(53063u, 17834u), !global2.a), u_input.a, ~_wgslsmith_add_u32(20882u, 1316u)));
    let var_2 = Struct_2(countOneBits(-select(abs(vec3<i32>(-1i, -2147483647i, global2.c.b)), vec3<i32>(5573i, u_input.c, 45373i), select(vec3<bool>(false, true, var_0.x), global2.c.a.wwx, global2.c.a.x))), Struct_1(select(select(!vec4<bool>(true, global2.c.a.x, false, var_0.x), select(global2.c.a, vec4<bool>(global2.a, true, var_0.x, true), false), var_0.x & true), vec4<bool>(any(var_0), 17367u < var_1.x, true & var_0.x, u_input.c != -1i), global2.c.a), abs(1i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global2.c.c, vec2<f32>(1000f, 523f), all(vec2<bool>(false, var_0.x))))))), Struct_1(!vec4<bool>(false || var_0.x, true, !global2.c.a.x, global2.c.a.x), u_input.c, global2.c.c));
    var var_3 = Struct_3(!var_0.x && all(vec3<bool>(any(var_2.c.a.yy), true, var_2.c.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(u_input.b.x, 26u)]))), vec2<f32>(_wgslsmith_f_op_f32(295f - -540f), var_2.b.c.x), true))), global2.c);
    return var_2.b.c.x;
}

fn func_2(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = min(-_wgslsmith_div_i32(arg_1, arg_1 | ~u_input.c), 2147483647i);
    let var_1 = global2.a;
    var var_2 = Struct_2(-_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, 1i) | ~vec3<i32>(arg_1, global2.c.b, -59802i), ~vec3<i32>(15800i, global2.c.b, global2.c.b) >> (vec3<u32>(u_input.a, u_input.b.x, arg_0) % vec3<u32>(32u))), global2.c, global2.c);
    var var_3 = _wgslsmith_f_op_f32(func_3()) > _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(35366u, min(u_input.a, 1u), 4801u & _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(22694u, 4294967295u))), 26u)]);
    global0 = global3[_wgslsmith_index_u32(firstTrailingBit(arg_0), 26u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1064f, _wgslsmith_f_op_f32(global2.b.x + global3[_wgslsmith_index_u32(u_input.a, 26u)]))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~18857u, 26u)]);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.a, 26u)])))), _wgslsmith_f_op_f32(func_2(reverseBits(~(u_input.b.x & 4294967295u)), _wgslsmith_mod_i32(2147483647i, 18113i)))));
    global3 = array<f32, 26>();
    global0 = _wgslsmith_f_op_f32(min(-678f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(22500u, 26u)]), _wgslsmith_f_op_f32(round(215f))))) * global2.b.x)));
    var var_1 = Struct_2(-(~(~(~vec3<i32>(u_input.c, global2.c.b, -14634i)))), Struct_1(!global2.c.a, _wgslsmith_div_i32(0i, 36375i << (~u_input.a % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1694f)), _wgslsmith_f_op_f32(round(-952f))))), global2.c);
    return Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_1.c.b, -2147483647i) ^ ~var_1.b.b, reverseBits(~11471i), var_1.a.x), firstTrailingBit(var_1.a)), Struct_1(!vec4<bool>(arg_0, true, any(vec2<bool>(false, var_1.b.a.x)), 800f != global3[_wgslsmith_index_u32(u_input.a, 26u)]), 1i, global2.c.c), Struct_1(global2.c.a, abs(countOneBits(0i)) ^ ~(var_1.c.b | u_input.c), var_1.c.c));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_3) -> StorageBuffer {
    global2 = arg_3;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_div_f32(758f, arg_1.c.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.b.x, 26u)])) + 1796f)) + arg_1.b.c.x);
    var var_1 = false;
    let var_2 = ~abs(arg_3.c.b);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(any(!arg_1.c.a)).c.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) + _wgslsmith_f_op_f32(-1421f * _wgslsmith_f_op_f32(-arg_3.b.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(arg_1.c.c.x + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(10794u, 26u)] + arg_1.c.c.x)), arg_1.c.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.c.x) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 26u)] * global2.c.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(928f + global3[_wgslsmith_index_u32(u_input.b.x, 26u)])))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(true).c.c.x - -1000f), func_1(global2.a).b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -912f)), global3[_wgslsmith_index_u32(28277u, 26u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 26>();
    let x = u_input.a;
    s_output = func_4(global2.c.b, func_1(false & global2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 26u)] - global2.c.c.x))), _wgslsmith_f_op_f32(func_3()), global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 1791f) + vec4<f32>(779f, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], _wgslsmith_f_op_f32(select(-234f, -285f, global2.c.a.x)), global2.c.a.x)), global2.b.x, func_1(global2.c.a.x).b.c.x)), Struct_3(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global2.c.c + global2.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2170f, -744f))), func_1(global2.c.a.x).c));
}

