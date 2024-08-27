struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<i32>(25061i, 1i, 2147483647i, i32(-2147483648)), vec2<f32>(1894f, -1000f), 1i), Struct_1(vec4<i32>(57004i, -21376i, 11609i, 35691i), vec2<f32>(-1547f, 451f), 2147483647i), Struct_1(vec4<i32>(66293i, 33110i, 11031i, i32(-2147483648)), vec2<f32>(-1757f, -527f), -29936i), Struct_1(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 0i), vec2<f32>(1672f, -1311f), 72529i), Struct_1(vec4<i32>(14690i, -1i, i32(-2147483648), 74649i), vec2<f32>(674f, -2449f), -1i), Struct_1(vec4<i32>(i32(-2147483648), -18395i, 1i, 0i), vec2<f32>(-523f, 1013f), -6797i), Struct_1(vec4<i32>(i32(-2147483648), 55033i, -30865i, -34793i), vec2<f32>(-1087f, 1531f), 1i), Struct_1(vec4<i32>(1i, -4291i, 5416i, -1i), vec2<f32>(2032f, 414f), i32(-2147483648)), Struct_1(vec4<i32>(-2307i, -23614i, -1i, 49755i), vec2<f32>(-339f, 1188f), i32(-2147483648)), Struct_1(vec4<i32>(58136i, 2539i, i32(-2147483648), 2147483647i), vec2<f32>(-1200f, -1354f), 1i));

var<private> global1: bool;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false));

var<private> global3: Struct_1 = Struct_1(vec4<i32>(1i, -1i, i32(-2147483648), 1i), vec2<f32>(-125f, -237f), 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    return global0[_wgslsmith_index_u32(0u, 10u)];
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(floor(global3.b.x)), select(any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))), true, ~(i32(-1i) * -2147483647i) <= abs(1i & u_input.d))));
    let var_1 = Struct_2(any(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true))));
    return func_2();
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(true | !any(vec4<bool>(true, true, true, true)));
    var var_1 = var_0.a;
    var var_2 = Struct_2(var_0.a);
    global3 = func_1(u_input.a.zww >> (vec3<u32>(1u, ~0u, 43828u) % vec3<u32>(32u)));
    global1 = var_2.a;
    return !select(vec2<bool>(_wgslsmith_add_u32(72767u, u_input.a.x) < ~4294967295u, true), select(!vec2<bool>(var_2.a, true), !select(vec2<bool>(var_2.a, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false)), vec2<bool>(any(vec3<bool>(var_2.a, var_2.a, var_2.a)), all(vec3<bool>(true, var_0.a, false)))), all(!select(vec2<bool>(false, true), vec2<bool>(var_0.a, false), var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~vec4<u32>(48741u, u_input.a.x, ~u_input.a.x & ~20457u, ~_wgslsmith_add_u32(9303u, u_input.a.x)), vec4<u32>(34029u, 20770u, 4294967295u, 1u), _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(0i, global3.c, global3.a.x), 35390i & global3.c) < (-(~12509i) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 77267u), vec2<u32>(u_input.a.x, 34258u)) % 32u)));
    let var_1 = max(~u_input.a, _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.x, u_input.a.x | 14041u, 4294967295u, 0u), _wgslsmith_clamp_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, 1u, var_0.x, var_0.x), min(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, u_input.a.x, 47636u, u_input.a.x))), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))), ~vec4<u32>(var_0.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), 1u, u_input.a.x)));
    global0 = array<Struct_1, 10>();
    global3 = func_1(~(~(~(~u_input.a.yzw))));
    let var_2 = select(vec2<bool>(_wgslsmith_dot_vec2_i32(u_input.b.zy, ~u_input.b.xz) > (-10936i & ~global3.c), !all(vec2<bool>(false, true))), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), func_3())), u_input.a.x <= _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, var_0.x, var_0.x, 1u)), ~reverseBits(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))));
    var_0 = var_1;
    var var_3 = -(func_2().a.wyz << (~_wgslsmith_sub_vec3_u32(countOneBits(var_0.yxx), vec3<u32>(var_0.x, u_input.a.x, 9345u)) % vec3<u32>(32u)));
    var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(22421u, ~(7503u | select(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), all(vec4<bool>(false, true, var_2.x, var_2.x)))));
}

