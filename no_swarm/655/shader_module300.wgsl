struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1218u, 31115u, 40441u);

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<bool>, 31>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = abs(global0.x) | ~arg_0.b;
    let var_1 = 1171f;
    var var_2 = min(~global0.yz, abs(~u_input.a.xy));
    global0 = u_input.a;
    var var_3 = Struct_1(true, arg_1.a.b);
    return abs(countOneBits(vec4<u32>(u_input.a.x, ~countOneBits(u_input.a.x), 43143u, 0u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global1.yy - _wgslsmith_div_vec2_f32(global1.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.ww * global1.yy), _wgslsmith_f_op_vec2_f32(global1.ww - global1.zy), false != arg_3.a.a)))));
    var var_1 = u_input.b;
    let var_2 = arg_1;
    global3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c) * _wgslsmith_f_op_f32(sign(global3.a)))), arg_2.x << ((8488u << (~global3.b % 32u)) % 32u));
    global0 = u_input.a;
    return _wgslsmith_div_u32(_wgslsmith_div_u32(~(~global0.x | _wgslsmith_dot_vec2_u32(vec2<u32>(105531u, arg_0.x), vec2<u32>(1u, 1u))), ~select(u_input.a.x, 0u, 1551f != global1.x)), ~(~global3.b));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = vec3<u32>(_wgslsmith_mult_u32((~19880u >> (abs(global0.x) % 32u)) & ~(~u_input.a.x), func_4(min(func_3(Struct_3(global1.x, u_input.a.x), Struct_2(Struct_1(false, vec3<bool>(false, false, true)), global1.x, 878f), Struct_1(false, global2[_wgslsmith_index_u32(u_input.a.x, 31u)])), vec4<u32>(6859u, u_input.a.x, 3538u, global0.x)), vec3<u32>(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(54315u, 1u), global0.xz), reverseBits(0u)), min(abs(vec4<u32>(u_input.a.x, u_input.a.x, 33462u, 4294967295u)), ~vec4<u32>(1u, global3.b, 37813u, 4294967295u)), Struct_2(Struct_1(false, global2[_wgslsmith_index_u32(global0.x, 31u)]), 1f, global1.x))), global0.x, _wgslsmith_sub_u32(~(~(~u_input.a.x)), ~u_input.a.x));
    global3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1.x, 370f, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-711f - global1.x), -1253f)))) + 2431f), ~(~58220u));
    var var_0 = 16130i;
    global3 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a, global3.a))), !select(false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1915f, global3.a)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) * _wgslsmith_f_op_f32(-global1.x))), select(select(true, true, true), select(true, false, true), true) || true)), _wgslsmith_dot_vec4_u32(vec4<u32>(max(1u, 4294967295u), 24953u & global0.x, 1u, _wgslsmith_mod_u32(global3.b, u_input.a.x)), abs(~vec4<u32>(4294967295u, global3.b, global3.b, u_input.a.x) >> (vec4<u32>(0u, u_input.a.x, 0u, 1u) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(-global3.a);
    return Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.b << (global0.x % 32u), 48438u), 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)], -(~0i) > ~(u_input.b.x | 2147483647i)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> f32 {
    global3 = arg_2;
    let var_0 = func_2(u_input.b.x);
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(select(~8770u, reverseBits(arg_2.b), true), global0.x, 13307u & u_input.a.x) | ~(~vec3<u32>(4294967295u, 4294967295u, u_input.a.x)), vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(reverseBits(4294967295u)), reverseBits(4895u)), 4294967295u, ~global0.x));
    global3 = arg_2;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1155f, arg_2.a, arg_3)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(trunc(global3.a))) - global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(600f * global1.x), _wgslsmith_f_op_f32(func_1(true, 2147483647i, Struct_3(1000f, 7014u), global3.a)))) == _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.a, global1.x))), true, false));
    var var_1 = vec2<u32>(global0.x, firstTrailingBit(func_4(vec4<u32>(46921u, ~4367u, global0.x, min(50857u, u_input.a.x)), u_input.a, ~(~vec4<u32>(41129u, 19573u, u_input.a.x, 4294967295u)), Struct_2(Struct_1(var_0.a, var_0.b), global1.x, 186f))));
    var var_2 = Struct_2(Struct_1(all(!vec2<bool>(false, var_0.b.x)) & (_wgslsmith_div_u32(1u, global3.b) != u_input.a.x), !vec3<bool>(all(vec4<bool>(true, var_0.a, true, var_0.a)), true, var_0.b.x && true)), -2699f, 269f);
    let var_3 = Struct_2(func_2(2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-302f, global1.x) + -1231f) * _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))), 1166f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(196f, _wgslsmith_f_op_f32(-149f * -651f), true)) > _wgslsmith_f_op_f32(func_1(true, firstTrailingBit(2147483647i), Struct_3(_wgslsmith_f_op_f32(ceil(var_3.c)), ~global3.b), -1000f)), global2[_wgslsmith_index_u32(79398u, 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec3<i32>(1i, -u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.wx, vec2<i32>(-250i, 54934i))), select(u_input.b.zzw, _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b.x, -12443i), u_input.b.xzw), any(vec4<bool>(var_0.b.x, true, true, var_0.b.x))) & vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x, ~u_input.b.x)), vec2<u32>(global3.b, ~global3.b ^ ~59988u) & firstLeadingBit(u_input.a.xx), vec2<u32>(1u, ~55037u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xx) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1752f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), -431f))));
}

