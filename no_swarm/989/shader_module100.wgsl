struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(13299u, 4294967295u), vec2<u32>(26250u, 18399u), vec2<u32>(0u, 0u), vec2<u32>(17348u, 37378u), vec2<u32>(38351u, 4294967295u), vec2<u32>(26054u, 1u), vec2<u32>(153u, 52462u), vec2<u32>(15652u, 73083u), vec2<u32>(40698u, 18636u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 38779u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(38988u, 4294967295u), vec2<u32>(1u, 87787u), vec2<u32>(4294967295u, 52196u), vec2<u32>(1u, 4294967295u), vec2<u32>(9030u, 57649u), vec2<u32>(113206u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(50410u, 1u), vec2<u32>(1u, 38622u), vec2<u32>(15673u, 1u), vec2<u32>(0u, 8014u), vec2<u32>(4294967295u, 0u), vec2<u32>(21383u, 17868u));

var<private> global3: Struct_1;

var<private> global4: array<f32, 15>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<bool> {
    return select(vec2<bool>((u_input.a | -1i) >= u_input.a, all(vec4<bool>(true, arg_3.x, false, true))), !(!select(vec2<bool>(arg_0.b.x, true), arg_3, global4[_wgslsmith_index_u32(1u, 15u)] <= arg_1.c.x)), false);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(global1.b, select(global3.a, global1.a, func_3(Struct_1(global1.a, vec2<bool>(global1.b.x, global3.a.x), vec3<f32>(global3.c.x, -403f, arg_0.c.x)), Struct_1(!global1.b, global3.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(242f, -757f, global3.c.x))), arg_0, vec2<bool>(!arg_0.b.x, global3.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1460f, global4[_wgslsmith_index_u32(4294967295u, 15u)], -430f) * arg_0.c))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-737f - global3.c.x), -1253f, _wgslsmith_f_op_f32(abs(global3.c.x)), _wgslsmith_f_op_f32(floor(-249f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(19809u, 15u)], global4[_wgslsmith_index_u32(arg_1.x, 15u)], global3.c.x, arg_0.c.x))))));
    global2 = array<vec2<u32>, 27>();
    let var_2 = all(!vec2<bool>(~0u <= (0u ^ arg_1.x), arg_1.x <= ~arg_1.x));
    let var_3 = arg_0;
    return Struct_1(vec2<bool>(var_3.a.x == !any(vec2<bool>(false, var_2)), any(!select(vec4<bool>(global1.a.x, true, global1.a.x, var_0.b.x), vec4<bool>(global1.b.x, global1.a.x, global1.a.x, var_0.a.x), vec4<bool>(var_0.b.x, var_2, true, true)))), select(!(!func_3(Struct_1(arg_0.a, arg_0.a, arg_0.c), Struct_1(arg_0.a, var_0.b, arg_0.c), Struct_1(arg_0.a, vec2<bool>(true, true), vec3<f32>(291f, -999f, -968f)), vec2<bool>(false, var_3.b.x))), vec2<bool>(select(global0[_wgslsmith_index_u32(12129u, 25u)], global0[_wgslsmith_index_u32(52219u, 25u)], false) != reverseBits(global0[_wgslsmith_index_u32(arg_1.x, 25u)]), global1.a.x), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -5422i), vec2<i32>(2147483647i, u_input.a))) >= -11716i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c.x, var_0.c.x, global3.c.x))))), var_0.c));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(!(!vec2<bool>(true, true && arg_2.a.x)), select(select(!(!global1.a), func_2(func_2(Struct_1(global3.a, vec2<bool>(arg_2.a.x, false), arg_2.c), vec4<u32>(arg_1, arg_1, 16603u, arg_1)), vec4<u32>(0u, 4294967295u, arg_1, 24215u)).b, false), vec2<bool>(any(select(vec4<bool>(arg_2.a.x, arg_2.b.x, false, true), vec4<bool>(false, false, global3.b.x, global3.b.x), false)), true), global1.b), vec3<f32>(1243f, -1590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1332f))));
    let var_1 = arg_2;
    var var_2 = var_1;
    var var_3 = vec4<i32>(arg_0.x, reverseBits(arg_0.x) >> (0u % 32u), -8193i, arg_0.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(461f, -810f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1099f, global1.c.x)))), _wgslsmith_f_op_f32(var_0.c.x - -1177f)), _wgslsmith_f_op_f32(-global1.c.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(386f, 794f, _wgslsmith_f_op_f32(-global1.c.x), var_1.c.x), vec4<f32>(540f, 1000f, -148f, _wgslsmith_f_op_f32(abs(arg_2.c.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1230f), _wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_f_op_f32(f32(-1f) * -1173f))));
    return _wgslsmith_f_op_f32(-global3.c.x);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 15u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -516f)) * _wgslsmith_f_op_f32(func_4(~vec2<i32>(global0[_wgslsmith_index_u32(0u, 25u)], 1i), ~4294967295u, func_2(Struct_1(vec2<bool>(global1.b.x, global1.b.x), global3.b, global3.c), vec4<u32>(36677u, 20401u, 4294967295u, 4294967295u)))))));
    var_0 = global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(abs(0u), 27u)], vec2<u32>(0u, ~62756u))), 15u)];
    var_0 = global4[_wgslsmith_index_u32(~22432u, 15u)];
    global0 = array<i32, 25>();
    var var_1 = Struct_1(global3.a, func_3(func_2(Struct_1(!vec2<bool>(global1.a.x, global3.b.x), !global3.b, global1.c), vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec2<bool>(true, false & global1.b.x), vec2<bool>(!global3.b.x, true), global3.c), Struct_1(vec2<bool>(global1.b.x, !global3.b.x), select(!global3.a, !global1.a, global1.b), _wgslsmith_f_op_vec3_f32(-global3.c)), global1.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 15u)] - 399f))), _wgslsmith_f_op_f32(max(global1.c.x, 470f)), global1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-375f, global3.c.x, global4[_wgslsmith_index_u32(1u, 15u)])), global1.c)), global1.a.x)));
    return -859f;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    return Struct_1(!(!select(func_2(arg_1, vec4<u32>(49936u, 52057u, 4294967295u, 4294967295u)).b, vec2<bool>(true, true), select(arg_2.a, vec2<bool>(true, false), arg_1.b.x))), global3.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1328f, arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.c.x, arg_2.c.x), _wgslsmith_f_op_f32(-global3.c.x), all(vec3<bool>(true, arg_1.a.x, global1.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 25>();
    let var_0 = global1.c.x;
    let var_1 = Struct_1(!vec2<bool>(94682u != _wgslsmith_clamp_u32(0u, 1u, 43792u), (u_input.a <= global0[_wgslsmith_index_u32(4294967295u, 25u)]) | global1.b.x), select(select(select(vec2<bool>(global1.b.x, true), vec2<bool>(false, global1.a.x), !global3.b), !global3.b, global1.a.x || true), !(!(!global1.a)), true), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_div_f32(-1195f, 185f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(7665u, 15u)] + 1179f), _wgslsmith_f_op_f32(sign(1428f)))), -1648f))));
    let var_2 = func_5(528f, var_1, Struct_1(select(!(!global1.b), global1.a, global1.b), select(vec2<bool>(global3.b.x, global3.a.x & var_1.b.x), !select(var_1.a, var_1.b, false), false), vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * var_1.c.x) + _wgslsmith_f_op_f32(-787f - var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 15u)])))), countOneBits(vec4<i32>(reverseBits(global0[_wgslsmith_index_u32(~0u, 25u)]), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 39865i), vec2<i32>(-2147483647i, 1i)), -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 25u)], 1i), u_input.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_1.c.xx)), _wgslsmith_f_op_vec2_f32(-var_1.c.xy), var_2.a.x)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -392f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global3.c.x));
}

