struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(1u, 4294967295u, 4294967295u, 62649u), vec4<u32>(6310u, 32124u, 42035u, 0u), vec4<u32>(94762u, 18298u, 39985u, 101704u), vec4<u32>(30611u, 0u, 1u, 4294967295u), vec4<u32>(42639u, 4294967295u, 5161u, 25084u), vec4<u32>(22113u, 42800u, 1u, 8185u), vec4<u32>(57165u, 4294967295u, 18103u, 0u), vec4<u32>(4294967295u, 33475u, 3698u, 64170u), vec4<u32>(14328u, 0u, 0u, 4294967295u), vec4<u32>(0u, 90295u, 78454u, 0u), vec4<u32>(1u, 4294967295u, 27591u, 9633u), vec4<u32>(34417u, 57500u, 1u, 62674u), vec4<u32>(4294967295u, 49296u, 1063u, 4294967295u), vec4<u32>(67270u, 11755u, 1u, 4138u), vec4<u32>(610u, 28587u, 4294967295u, 0u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(4294967295u, 56112u, 23810u, 1u), vec4<u32>(9300u, 0u, 4294967295u, 58745u), vec4<u32>(33037u, 0u, 9822u, 4294967295u), vec4<u32>(36325u, 6512u, 0u, 32890u));

var<private> global2: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(i32(-2147483648), 2147483647i, 50624i, 6412i), vec4<i32>(2147483647i, 0i, 1i, -12180i), vec4<i32>(2147483647i, i32(-2147483648), -37134i, 2147483647i), vec4<i32>(0i, 44762i, 2147483647i, 2147483647i), vec4<i32>(-22376i, 7719i, 0i, i32(-2147483648)), vec4<i32>(1i, 24972i, -4302i, 2147483647i), vec4<i32>(-35322i, i32(-2147483648), 38912i, 16519i), vec4<i32>(-33389i, -39773i, 2147483647i, i32(-2147483648)), vec4<i32>(-1534i, 10151i, -9148i, -24792i), vec4<i32>(0i, i32(-2147483648), -6142i, 1i), vec4<i32>(-13491i, 0i, 1i, 2147483647i), vec4<i32>(41336i, -20599i, i32(-2147483648), -5473i), vec4<i32>(-1i, 1i, -19090i, 1i), vec4<i32>(2147483647i, i32(-2147483648), 36806i, -24545i), vec4<i32>(33818i, 1i, 2147483647i, 14034i), vec4<i32>(i32(-2147483648), 2147483647i, -6516i, -1i), vec4<i32>(37224i, 2147483647i, 1i, -40961i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    var var_0 = global0.b;
    var var_1 = ~reverseBits(arg_0.b);
    let var_2 = arg_1.d;
    var var_3 = var_2.x;
    let var_4 = !(!(!(!vec3<bool>(var_0.b.x, true, true))));
    return global0.b;
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = global0.c.b.yxx;
    return arg_2.b;
}

fn func_1(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(551f, arg_1, 192f), vec3<f32>(-294f, 823f, arg_1)))))) + vec3<f32>(-1542f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-182f * arg_1)))));
    global0 = Struct_3(func_3(arg_1, global0.b.b.zww, Struct_3(global0.b, global0.a, func_2(Struct_4(global0.a, vec2<u32>(5004u, 4294967295u), Struct_3(global0.a, global0.c, global0.a, global2[_wgslsmith_index_u32(global0.c.a, 17u)]), arg_1), Struct_3(Struct_1(0u, global0.c.b, vec3<i32>(-80847i, u_input.a, -61524i)), global0.c, Struct_1(0u, global0.a.b, vec3<i32>(806i, 2147483647i, u_input.a)), vec4<i32>(0i, global0.c.c.x, global0.d.x, global0.c.c.x))), vec4<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, -38131i), 0i, 1i))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + arg_1), vec3<bool>(true, any(!vec2<bool>(arg_0, global0.a.b.x)), !(global0.b.a < global0.b.a)), Struct_3(func_3(_wgslsmith_f_op_f32(-arg_1), func_3(var_0.x, vec3<bool>(false, false, true), Struct_3(global0.a, global0.b, Struct_1(global0.a.a, global0.c.b, global0.c.c), global2[_wgslsmith_index_u32(global0.b.a, 17u)])).b.wzx, Struct_3(global0.c, Struct_1(global0.a.a, vec4<bool>(global0.a.b.x, global0.a.b.x, false, true), vec3<i32>(-34316i, u_input.a, 2147483647i)), global0.a, vec4<i32>(u_input.a, global0.c.c.x, u_input.a, u_input.a))), func_2(Struct_4(global0.b, vec2<u32>(global0.a.a, 4294967295u), Struct_3(global0.a, global0.c, Struct_1(31227u, global0.c.b, global0.a.c), vec4<i32>(global0.c.c.x, 36292i, u_input.a, -1809i)), 483f), Struct_3(global0.b, global0.b, global0.c, vec4<i32>(global0.b.c.x, global0.b.c.x, -29855i, u_input.a))), Struct_1(11209u, select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, true, false, false), true), ~vec3<i32>(u_input.a, 2147483647i, u_input.a)), vec4<i32>(~global0.a.c.x, -2147483647i, -global0.c.c.x, _wgslsmith_mod_i32(global0.b.c.x, global0.b.c.x)))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1467f, -104f) + _wgslsmith_f_op_f32(f32(-1f) * -591f)) + 616f), !global0.c.b.wxx, Struct_3(Struct_1(0u, select(vec4<bool>(global0.b.b.x, false, arg_0, true), vec4<bool>(arg_0, arg_0, global0.a.b.x, global0.c.b.x), global0.c.b.x), firstLeadingBit(global0.a.c)), Struct_1(~4294967295u, vec4<bool>(false, global0.a.b.x, arg_0, false), -vec3<i32>(68125i, -6215i, u_input.a)), func_3(_wgslsmith_f_op_f32(var_0.x + -244f), global0.c.b.wxy, Struct_3(Struct_1(global0.b.a, vec4<bool>(false, false, false, global0.a.b.x), vec3<i32>(global0.a.c.x, u_input.a, global0.c.c.x)), Struct_1(global0.b.a, vec4<bool>(arg_0, true, global0.b.b.x, false), vec3<i32>(u_input.a, global0.d.x, global0.a.c.x)), Struct_1(global0.b.a, vec4<bool>(true, true, false, arg_0), vec3<i32>(2147483647i, u_input.a, 1i)), vec4<i32>(global0.a.c.x, global0.a.c.x, 0i, global0.b.c.x))), global2[_wgslsmith_index_u32(min(48415u << (global0.c.a % 32u), select(global0.b.a, 31607u, global0.a.b.x)), 17u)])), vec4<i32>(_wgslsmith_clamp_i32(986i, reverseBits(firstLeadingBit(global0.c.c.x)), select(-1433i, global0.d.x, global0.a.b.x & false)), u_input.a, 6031i, func_2(Struct_4(global0.a, abs(vec2<u32>(global0.a.a, global0.b.a)), Struct_3(global0.a, Struct_1(3850u, global0.c.b, global0.a.c), Struct_1(global0.c.a, vec4<bool>(global0.b.b.x, global0.c.b.x, global0.c.b.x, true), global0.d.zyx), vec4<i32>(11060i, 2147483647i, 0i, -1i)), -1000f), Struct_3(Struct_1(global0.a.a, vec4<bool>(arg_0, global0.b.b.x, global0.a.b.x, arg_0), vec3<i32>(u_input.a, 1i, global0.b.c.x)), global0.b, func_2(Struct_4(global0.c, vec2<u32>(37689u, 0u), Struct_3(global0.b, global0.b, global0.c, global2[_wgslsmith_index_u32(4294967295u, 17u)]), -340f), Struct_3(global0.c, global0.b, Struct_1(4294967295u, vec4<bool>(false, false, true, true), vec3<i32>(global0.a.c.x, -22789i, -1i)), global0.d)), select(global2[_wgslsmith_index_u32(1u, 17u)], vec4<i32>(u_input.a, u_input.a, -12286i, 2147483647i), vec4<bool>(arg_0, false, false, global0.c.b.x)))).c.x));
    global1 = array<vec4<u32>, 20>();
    let var_1 = vec4<f32>(364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(780f, var_0.x)))) + -179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -1248f, all(vec4<bool>(false, global0.a.b.x, global0.b.b.x, false)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(567f - var_0.x) * _wgslsmith_f_op_f32(-arg_1))), var_0.x)));
    let var_2 = ~countOneBits(-2147483647i);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), 1690f))), var_0.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), -106f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.b;
    let var_1 = global0.c.c.x;
    let var_2 = Struct_1(global0.a.a, !vec4<bool>(func_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1410f)), false, global0.c.b.x, 0i != _wgslsmith_div_i32(u_input.a, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.c.x, _wgslsmith_dot_vec3_i32(global0.a.c, vec3<i32>(2147483647i, global0.c.c.x, global0.b.c.x)), u_input.a), global0.b.c));
    var var_3 = true;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(640f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1615f)))) * 551f)), -740f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~global0.c.a, firstTrailingBit(_wgslsmith_add_u32(global0.b.a, var_2.a)), 11489u, ~_wgslsmith_sub_u32(~global0.c.a, 1u)), ~_wgslsmith_add_i32(2659i, ~_wgslsmith_mult_i32(0i, global0.b.c.x)), ~var_2.c.x);
}

