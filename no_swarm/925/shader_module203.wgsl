struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<u32>(4294967295u, 47548u, 4294967295u), 1u), Struct_1(vec3<u32>(1u, 0u, 41556u), 0u), Struct_1(vec3<u32>(4294967295u, 81242u, 0u), 4294967295u), Struct_1(vec3<u32>(1u, 0u, 22271u), 46982u));

var<private> global3: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(39184i, 2147483647i, 1i, 10599i), vec4<i32>(-1i, -1i, 2147483647i, -1i), vec4<i32>(-1i, 32755i, 20272i, -48576i), vec4<i32>(0i, 0i, -1521i, 2147483647i), vec4<i32>(1i, i32(-2147483648), -46160i, 2147483647i), vec4<i32>(56886i, 11536i, -58351i, 31036i), vec4<i32>(8847i, 2147483647i, -7541i, -14417i));

var<private> global4: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = any(select(vec3<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(arg_0, arg_0, false), arg_0)), !global0.x | true), !vec3<bool>(global0.x, all(vec4<bool>(true, global0.x, global0.x, false)), false), !select(!vec3<bool>(global0.x, true, false), select(vec3<bool>(global0.x, arg_0, global0.x), vec3<bool>(false, false, false), true), vec3<bool>(arg_0, arg_0, global0.x))));
    let var_1 = global0.x;
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-180f, 921f, 231f, -1367f) - vec4<f32>(142f, -269f, -493f, 1094f)))) + vec4<f32>(_wgslsmith_div_f32(2467f, -1145f), _wgslsmith_f_op_f32(f32(-1f) * -271f), 378f, _wgslsmith_f_op_f32(-1121f * -485f))))));
    global0 = select(select(vec3<bool>(false, -667f < _wgslsmith_f_op_f32(var_3.x + -1253f), arg_0), !(!vec3<bool>(var_0, true, true)), true || arg_0), vec3<bool>(!arg_0, all(vec2<bool>(true, var_0)), false & (false | global0.x)), global1.x >= ~global4.b);
    return max(~(~4294967295u), ~global1.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global2 = array<Struct_1, 4>();
    var var_0 = ~vec4<u32>(~_wgslsmith_add_u32(global4.a.x, 69205u), min(_wgslsmith_mult_u32(arg_0.x, countOneBits(112087u)), firstTrailingBit(~global4.a.x)), 4294967295u, 49297u);
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, select(5859u, global4.a.x, true), global4.a.x | global4.b), 4u)];
    var var_1 = _wgslsmith_sub_i32(-firstLeadingBit(1i), _wgslsmith_mod_i32(abs(-26409i), -arg_1)) ^ arg_1;
    let var_2 = Struct_1(arg_2.a, u_input.d.x << ((reverseBits(0u) >> (0u % 32u)) % 32u));
    return global0.x;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = global1.yy;
    global3 = array<vec4<i32>, 7>();
    global0 = vec3<bool>(true, (any(global0.zz) || false) == true, func_4(~vec2<u32>(firstLeadingBit(var_0.x), 1u), 2147483647i, Struct_1(vec3<u32>(_wgslsmith_clamp_u32(51859u, var_0.x, u_input.b), ~global4.a.x, global4.a.x), ~1u), global2[_wgslsmith_index_u32(func_3(global0.x), 4u)]));
    let var_1 = ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(~26849u, ~43626u, ~global4.b, ~global4.b), _wgslsmith_div_vec4_u32(~select(vec4<u32>(51501u, global4.a.x, 61282u, global4.a.x), vec4<u32>(1u, global1.x, u_input.b, var_0.x), vec4<bool>(true, true, false, true)), abs(vec4<u32>(var_0.x, 58191u, 4294967295u, 1u))), vec4<u32>(~(0u >> (global4.b % 32u)), global1.x, u_input.c, ~global4.b));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32((36150u & _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(global1.xx, vec2<u32>(4294967295u, global1.x)), global4.b << (u_input.d.x % 32u))) & _wgslsmith_dot_vec2_u32(min(global1.yy, vec2<u32>(global4.a.x, u_input.b)), global4.a.xz), 4294967295u), 4u)];
    return global2[_wgslsmith_index_u32(~(max(var_1.x, u_input.a.x) ^ 67211u), 4u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) * 536f), abs(vec3<i32>(1i, 1i, 1i)));
    var var_1 = ~_wgslsmith_sub_vec4_u32(max(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global4.b, u_input.a.x, u_input.b), vec4<u32>(u_input.b, 74324u, 28255u, global4.a.x)), vec4<u32>(reverseBits(15652u), var_0.b ^ global4.b, func_2(arg_1.x, vec3<i32>(0i, 15379i, -3634i)).a.x, 1u)), select(vec4<u32>(global4.a.x, var_0.b, 1u, ~12786u), vec4<u32>(global1.x, ~1u, global4.b, ~var_0.a.x), vec4<bool>(global0.x, arg_2, arg_2, true & arg_2)));
    var_1 = ~(~vec4<u32>(~45411u, abs(global4.a.x), var_0.b, _wgslsmith_mult_u32(0u, global4.a.x))) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(28963u, 1u, var_0.b, global4.a.x), max(vec4<u32>(global1.x, u_input.d.x, var_1.x, global4.a.x), vec4<u32>(3630u, 26877u, u_input.c, 4294967295u))) ^ ~(~vec4<u32>(29316u, 4294967295u, global1.x, 1u)), ~min(vec4<u32>(11530u, var_1.x, var_1.x, 4294967295u) << (vec4<u32>(global1.x, 1u, 14815u, var_1.x) % vec4<u32>(32u)), abs(vec4<u32>(global4.b, 4294967295u, var_0.b, global4.b))));
    let var_2 = reverseBits(vec4<u32>(~(~global1.x << (var_0.b % 32u)), 52845u, 0u, 55046u));
    global4 = Struct_1(var_0.a, u_input.d.x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(0u, 1u);
    var var_1 = Struct_1(vec3<u32>((u_input.b >> (var_0 % 32u)) ^ ~func_1(vec3<bool>(false, true, global0.x), vec3<f32>(153f, -142f, 1188f), true), ~func_3(true), u_input.d.x ^ global4.b), u_input.a.x >> (u_input.b % 32u));
    let var_2 = Struct_1(_wgslsmith_div_vec3_u32(~global4.a, var_1.a), u_input.c);
    var var_3 = !(!vec4<bool>(global0.x, true, true, any(vec3<bool>(true, global0.x, true)) & global0.x));
    global1 = ~(~min(var_1.a, vec3<u32>(_wgslsmith_add_u32(var_0, 4294967295u), ~15911u, 1u)));
    var var_4 = 1i;
    let var_5 = Struct_1(select(firstTrailingBit(var_2.a), vec3<u32>(37379u, var_0, _wgslsmith_div_u32(16047u, global4.b)), true), 4294967295u | _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_2.a.x, 1u), _wgslsmith_dot_vec2_u32(var_2.a.yz, var_1.a.yx)), abs(33166u) | select(var_1.b, global4.b, true)));
    var var_6 = 1138f;
    let var_7 = 1223f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global4.a.x, var_0), var_2.a.x), var_1.a.x, _wgslsmith_mod_u32(5341u, countOneBits(var_2.b))) & vec3<u32>(~var_5.b, func_3(select(true, global0.x, false)), global4.b), 14410u);
}

