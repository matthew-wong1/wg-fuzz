struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(0u, 35015u, 0u), vec3<u32>(88191u, 1u, 48940u), vec3<u32>(50622u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(52576u, 6191u, 4294967295u), vec3<u32>(22351u, 0u, 0u), vec3<u32>(23654u, 30472u, 0u), vec3<u32>(38309u, 117728u, 79506u), vec3<u32>(4294967295u, 21879u, 1u), vec3<u32>(0u, 48178u, 13917u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 51974u, 61667u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 42494u), vec3<u32>(56551u, 46992u, 0u), vec3<u32>(45692u, 4294967295u, 0u), vec3<u32>(51277u, 4294967295u, 4294967295u), vec3<u32>(31604u, 0u, 0u), vec3<u32>(47356u, 67013u, 38025u), vec3<u32>(0u, 14594u, 23934u), vec3<u32>(10822u, 4294967295u, 30377u), vec3<u32>(0u, 1u, 13378u), vec3<u32>(8983u, 0u, 2493u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(29345u, 1824u, 1u), vec3<u32>(7225u, 1u, 4294967295u), vec3<u32>(70563u, 22955u, 4294967295u), vec3<u32>(75168u, 4294967295u, 4294967295u));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(34499i, -1i, 2147483647i));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<i32>(44182i, 22677i, -19218i)), Struct_1(vec3<i32>(-1i, 1i, -22744i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(28410i, 2147483647i, -10702i)), Struct_1(vec3<i32>(-20655i, 1i, 2147483647i)), Struct_1(vec3<i32>(3806i, 21527i, -29711i)), Struct_1(vec3<i32>(52763i, 2147483647i, -1i)), Struct_1(vec3<i32>(59145i, 0i, -49638i)), Struct_1(vec3<i32>(8635i, 2147483647i, 16918i)));

var<private> global3: array<u32, 15> = array<u32, 15>(13970u, 0u, 0u, 12675u, 4294967295u, 0u, 3765u, 1u, 24734u, 13227u, 75031u, 0u, 4294967295u, 4294967295u, 21831u);

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global1 = Struct_1(-_wgslsmith_div_vec3_i32(global1.a, global1.a));
    var var_0 = Struct_2(Struct_1(max(global1.a, ~vec3<i32>(-23677i, 38606i, u_input.b) ^ vec3<i32>(-15870i, u_input.b, -17296i))));
    var var_1 = Struct_1(max(reverseBits(vec3<i32>(global1.a.x, ~u_input.b, select(-1i, 2939i, true))), vec3<i32>(u_input.b << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)] % 32u), -var_0.a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, u_input.b, -24456i), vec3<i32>(u_input.b, global1.a.x, var_0.a.a.x))) >> (firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 28u)]) % vec3<u32>(32u))));
    global2 = array<Struct_1, 9>();
    return ~33377u;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_1(firstLeadingBit(vec3<i32>(~u_input.b, global1.a.x, _wgslsmith_clamp_i32(global1.a.x, 7476i, global1.a.x))) | (vec3<i32>(-25602i << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 15u)], 15u)] % 32u), ~global1.a.x, _wgslsmith_div_i32(-2147483647i, -2147483647i)) << (u_input.a.xwz % vec3<u32>(32u))));
    var var_1 = global4.x;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(462f, 699f))));
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(~func_3(), 9u)]);
    let var_4 = vec4<u32>(~(~firstTrailingBit(_wgslsmith_mod_u32(61921u, 4294967295u))), ~(~(~(arg_0 | global3[_wgslsmith_index_u32(4294967295u, 15u)]))), ~4294967295u, _wgslsmith_add_u32(31003u, abs(firstTrailingBit(~arg_0))));
    return Struct_2(var_3.a);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = func_2(u_input.a.x);
    global3 = array<u32, 15>();
    var_0 = func_2(~u_input.a.x ^ ~2431u);
    global1 = Struct_1(~global1.a & global1.a);
    global3 = array<u32, 15>();
    return max(36945u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_3(), 15u)], 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~4294967295u), ~func_1(vec4<f32>(1543f, 1274f, -659f, -642f))), 9u)];
    global3 = array<u32, 15>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~abs(1u), u_input.a.x | 25682u), 9u)];
    global4 = !select(vec4<bool>(global4.x, select(global4.x, true, any(global4.wzy)), all(select(vec2<bool>(global4.x, global4.x), global4.yy, true)), !global4.x | true), select(!vec4<bool>(global4.x, global4.x, false, global4.x), !(!vec4<bool>(false, global4.x, true, global4.x)), true), select(vec4<bool>(false, true, true, global4.x), select(!vec4<bool>(global4.x, true, true, global4.x), select(vec4<bool>(true, false, global4.x, global4.x), vec4<bool>(global4.x, true, true, true), vec4<bool>(false, global4.x, false, global4.x)), !global4.x), !vec4<bool>(true, true, global4.x, global4.x)));
    global0 = array<vec3<u32>, 28>();
    let var_2 = global4.xyw;
    var var_3 = func_2(23613u).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(28707u | _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_dot_vec2_u32(vec2<u32>(36627u, u_input.a.x), vec2<u32>(global3[_wgslsmith_index_u32(42396u, 15u)], u_input.a.x)), 0u), ~(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)] >> (u_input.a.x % 32u))), -global1.a.x, countOneBits(11535i), -190f);
}

