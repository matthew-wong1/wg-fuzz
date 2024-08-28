struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, true, false, true, false, true, true, true, false, false, false, true, false, false, true, false, false, true, false, false, true, true, true, false, false, true, false, true, false, false);

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec4<u32>(10991u, 0u, 4294967295u, 60341u), 1i), Struct_3(vec4<u32>(66862u, 1u, 72652u, 0u), -17672i), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 114051u), 1i), Struct_3(vec4<u32>(16242u, 39722u, 1u, 115451u), 1i), Struct_3(vec4<u32>(31448u, 4759u, 0u, 50687u), -1i), Struct_3(vec4<u32>(26827u, 1u, 23450u, 63589u), 2147483647i), Struct_3(vec4<u32>(0u, 23974u, 0u, 92202u), 2147483647i), Struct_3(vec4<u32>(4294967295u, 28317u, 5118u, 28214u), i32(-2147483648)), Struct_3(vec4<u32>(1u, 1u, 4294967295u, 84u), -20172i), Struct_3(vec4<u32>(1u, 30955u, 1u, 0u), i32(-2147483648)), Struct_3(vec4<u32>(23155u, 0u, 4294967295u, 4294967295u), i32(-2147483648)), Struct_3(vec4<u32>(40308u, 4294967295u, 1u, 0u), 0i), Struct_3(vec4<u32>(0u, 3698u, 4294967295u, 12619u), -17304i), Struct_3(vec4<u32>(34013u, 33816u, 4294967295u, 10947u), 752i), Struct_3(vec4<u32>(28433u, 1u, 4294967295u, 36565u), 16247i), Struct_3(vec4<u32>(39109u, 25310u, 3487u, 4294967295u), 51592i), Struct_3(vec4<u32>(4294967295u, 0u, 62266u, 0u), -13447i), Struct_3(vec4<u32>(46932u, 0u, 39537u, 1u), 0i), Struct_3(vec4<u32>(1u, 1u, 4294967295u, 58779u), i32(-2147483648)), Struct_3(vec4<u32>(13063u, 4294967295u, 16358u, 1u), 2147483647i), Struct_3(vec4<u32>(4294967295u, 0u, 39773u, 4294967295u), i32(-2147483648)));

var<private> global2: Struct_3 = Struct_3(vec4<u32>(0u, 63458u, 50876u, 1u), 0i);

var<private> global3: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = !vec2<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(true, global3.b))));
    global0 = array<bool, 32>();
    var var_1 = Struct_2(Struct_1(~reverseBits(global3.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1308f - _wgslsmith_f_op_f32(1376f - -806f)) + global3.c.x) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.c.x))))), _wgslsmith_f_op_vec2_f32(global3.c * _wgslsmith_f_op_vec2_f32(global3.c * vec2<f32>(_wgslsmith_div_f32(global3.c.x, global3.c.x), _wgslsmith_f_op_f32(floor(1816f))))), 0i >> (arg_0.a.x % 32u));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(ceil(-240f));
    return ~(~4294967295u);
}

fn func_2() -> bool {
    global1 = array<Struct_3, 21>();
    global2 = global1[_wgslsmith_index_u32(max(~(~global2.a.x) << (global2.a.x % 32u), func_3(Struct_3(~vec4<u32>(1u, u_input.a.x, global2.a.x, 33354u), ~u_input.e), Struct_1((vec2<i32>(u_input.e, -2147483647i) >> (global2.a.zy % vec2<u32>(32u))) ^ ~vec2<i32>(1i, global2.b)))), 21u)];
    global3 = Struct_2(Struct_1(reverseBits(-firstLeadingBit(vec2<i32>(-50877i, global2.b)))), !global0[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.c) - global3.c), global2.b);
    let var_0 = global2.b;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1246f);
    return false;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-414f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_div_f32(global3.c.x, -1026f)))) * global3.c.x));
    var var_1 = select(select(vec3<bool>(!global0[_wgslsmith_index_u32(13222u, 32u)] || true, true, !func_2()), !select(select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], false, global0[_wgslsmith_index_u32(21415u, 32u)]), global3.b), select(vec3<bool>(false, global0[_wgslsmith_index_u32(global2.a.x, 32u)], global0[_wgslsmith_index_u32(global2.a.x, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 32u)], false, false), vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 32u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global3.b, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(global2.a.x, 32u)]), vec3<bool>(global3.b, false, global0[_wgslsmith_index_u32(4294967295u, 32u)]))), select(!(!vec3<bool>(global3.b, true, false)), vec3<bool>(true, true, true), !global3.b)), vec3<bool>(!global0[_wgslsmith_index_u32(~4294967295u, 32u)], true, select(!(0i != global3.d), true, true)), u_input.e > _wgslsmith_clamp_i32(~(i32(-1i) * -11923i), _wgslsmith_mult_i32(-2147483647i, ~0i), global2.b));
    var var_2 = vec4<u32>(global2.a.x, 40220u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(0u, global2.a.x)), _wgslsmith_sub_vec2_u32(global2.a.yz, vec2<u32>(39576u, 4294967295u))), u_input.c.zy), 4294967295u) << (~(~firstTrailingBit(vec4<u32>(57238u, 0u, 4294967295u, global2.a.x)) ^ ~vec4<u32>(133085u, 15948u, 41412u, global2.a.x)) % vec4<u32>(32u));
    let var_3 = Struct_1(-(~(~(vec2<i32>(global3.d, u_input.e) & global3.a.a))));
    var var_4 = firstTrailingBit(0i) > countOneBits(global2.b);
    return _wgslsmith_f_op_f32(sign(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global3.c.x * -505f), global3.c.x, _wgslsmith_f_op_f32(max(global3.c.x, global3.c.x))))), abs(firstTrailingBit(-25715i)));
}

