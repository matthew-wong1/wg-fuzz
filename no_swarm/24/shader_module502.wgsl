struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(-15803i, -77771i), vec3<f32>(1386f, -1120f, 1490f));

var<private> global1: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(4294967295u, 56149u, 1u, 4294967295u), vec4<u32>(8499u, 4294967295u, 1u, 1u), vec4<u32>(80073u, 15785u, 91648u, 16541u), vec4<u32>(66099u, 561u, 30840u, 26907u), vec4<u32>(4294967295u, 4294967295u, 27775u, 24927u), vec4<u32>(4294967295u, 36202u, 1u, 0u), vec4<u32>(19383u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 387u, 0u, 4294967295u), vec4<u32>(4294967295u, 31692u, 85751u, 123316u), vec4<u32>(30049u, 46263u, 65013u, 30745u), vec4<u32>(23118u, 4294967295u, 5684u, 0u), vec4<u32>(76052u, 52623u, 51404u, 6869u), vec4<u32>(24636u, 71858u, 1u, 0u), vec4<u32>(4294967295u, 130757u, 4294967295u, 20240u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1510u), vec4<u32>(4294967295u, 0u, 1u, 5064u), vec4<u32>(0u, 0u, 0u, 42138u), vec4<u32>(59125u, 6177u, 40921u, 10947u), vec4<u32>(691u, 12931u, 33929u, 4294967295u), vec4<u32>(4294967295u, 0u, 12742u, 1u), vec4<u32>(1u, 90314u, 0u, 4294967295u), vec4<u32>(66755u, 4294967295u, 108739u, 62142u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(101196u, 4294967295u, 101250u, 1u), vec4<u32>(75497u, 68384u, 43136u, 1u));

var<private> global2: array<Struct_2, 12>;

var<private> global3: vec4<i32>;

var<private> global4: vec4<u32> = vec4<u32>(0u, 1u, 1u, 41863u);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(firstTrailingBit(global4.yxy >> (vec3<u32>(u_input.b, u_input.b, arg_0.x) % vec3<u32>(32u)))), ~firstTrailingBit(global4.xxy));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f))))))));
}

fn func_2() -> f32 {
    let var_0 = Struct_3(true, _wgslsmith_f_op_f32(func_3(reverseBits(select(select(global4.ww, vec2<u32>(global4.x, 63696u), false), vec2<u32>(43361u, 35806u), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1218f + global0.b.x)), global2[_wgslsmith_index_u32(global4.x, 12u)], true)), ~global4.wxx, global3.xxx);
    global3 = -vec4<i32>(-23192i, -15395i, 8076i, u_input.c);
    let var_1 = global2[_wgslsmith_index_u32(1u, 12u)];
    let var_2 = global2[_wgslsmith_index_u32(1u, 12u)];
    global4 = select(~(~countOneBits(global1[_wgslsmith_index_u32(global4.x, 25u)])) & vec4<u32>(29617u, _wgslsmith_mod_u32(var_0.c.x, 74633u) & global4.x, 1u, u_input.b), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(min(~u_input.b, ~28084u), 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)]), true);
    return -1023f;
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = vec2<u32>(1u, global4.x);
    let var_1 = ~global4.xx;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(320f * _wgslsmith_f_op_f32(global0.b.x * global0.b.x)) - global0.b.x))), 1500f);
    let var_3 = -vec2<i32>(0i, -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.a, global0.a), vec2<i32>(global0.a.x, -40309i)));
    let var_4 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(923f, var_2.x, 2087f)))))))));
    return Struct_3(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(271f, 365f), _wgslsmith_f_op_f32(f32(-1f) * -236f))) * _wgslsmith_f_op_f32(-var_2.x))), vec3<u32>(var_0.x, _wgslsmith_mod_u32(~(~129129u), ~abs(var_1.x)), u_input.b), vec3<i32>(-(var_4.a.x | 35298i), -var_4.a.x, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<i32>(i32(-1i) * -743i, i32(-1i) * -8970i), global0.b);
    var var_1 = func_1(vec2<bool>(true, true));
    var var_2 = 0i;
    global4 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.b, 1u), func_1(vec2<bool>(var_1.a, var_1.a)).c.x, ~u_input.b, ~128420u), global1[_wgslsmith_index_u32(4294967295u, 25u)]), global1[_wgslsmith_index_u32(var_1.c.x, 25u)]), global4.x, u_input.b, abs(~(~_wgslsmith_add_u32(global4.x, 1u))));
    var var_3 = Struct_2(reverseBits(~vec2<i32>(2147483647i, -30440i) ^ _wgslsmith_clamp_vec2_i32(var_0.a, global0.a, countOneBits(global0.a))), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~global4.wx, _wgslsmith_f_op_f32(round(-1255f)), Struct_2(global3.yz, vec3<f32>(-1734f, var_1.b, global0.b.x)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-362f, var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -278f))) * -196f)));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_3.a.x, ~16321i), 19569i), _wgslsmith_f_op_f32(-global0.b.x));
}

