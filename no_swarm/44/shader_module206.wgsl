struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(0u, 67549u, 4979u, 37732u, 1u, 1u, 9885u, 1u, 4294967295u, 4294967295u, 5487u, 20678u, 4294967295u, 68329u, 4294967295u, 31553u, 98421u, 5571u, 1u, 80939u, 68960u, 8796u);

var<private> global1: Struct_1;

var<private> global2: array<f32, 16>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(global1.a, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.a.x, 1219f)))))), 1939f, u_input.b, 67682u, ~_wgslsmith_clamp_u32(14422u, 0u, abs(u_input.c))), ~(~(~vec4<i32>(1i, 1i, 1i, 1i))));
    global1 = var_0.b;
    var_0 = Struct_2(vec2<f32>(666f, -761f), var_0.b, select(~vec4<i32>(-var_0.c.x, ~(-13643i), -var_0.c.x, -2147483647i), var_0.c & ~max(vec4<i32>(-43215i, var_0.c.x, -2147483647i, 0i), vec4<i32>(41234i, 1i, var_0.c.x, 30072i)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, false))))));
    let var_1 = ~vec3<u32>(u_input.c, 1u, var_0.b.d);
    let var_2 = all(vec2<bool>(all(vec3<bool>(false, true, true)) || true, any(vec4<bool>(global1.a.x >= 1471f, true, true, var_0.c.x <= var_0.c.x))));
    return -37948i;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-173f))))), 775f), _wgslsmith_f_op_f32(-global1.b), 1u & ((_wgslsmith_add_u32(40178u, 0u) ^ arg_3.d) >> (max(1u, _wgslsmith_sub_u32(arg_3.c, u_input.c)) % 32u)), _wgslsmith_mod_u32(countOneBits(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_mult_u32(0u, u_input.b))), global0[_wgslsmith_index_u32(0u, 22u)]), ~(~52560u));
    var var_1 = -(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-46996i, -2147483647i), vec2<i32>(-19273i, -1i)), abs(vec2<i32>(arg_2, arg_2))) >> ((~_wgslsmith_mod_u32(41210u, global1.c) & ~1u) % 32u));
    let var_2 = ~_wgslsmith_div_vec2_u32(~firstTrailingBit(~vec2<u32>(global1.d, 9214u)), ~vec2<u32>(4294967295u, 110791u) << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_3.e, 120527u), min(vec2<u32>(11483u, 4294967295u), vec2<u32>(arg_3.d, arg_3.d))) % vec2<u32>(32u)));
    var_1 = arg_2;
    var var_3 = arg_3;
    return arg_3;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = -1576f;
    var var_1 = vec4<u32>(~u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~1u, arg_1.b.e), reverseBits(15638u)), ~((global0[_wgslsmith_index_u32(u_input.b, 22u)] >> (15454u % 32u)) | _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 22u)], 46880u))), 22u)], global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(99657u, 22u)]), 22u)], global1.d);
    var var_2 = -414f;
    var var_3 = arg_1.c ^ -(~(~arg_1.c));
    let var_4 = -arg_1.c;
    return arg_1;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<f32, 16>();
    var var_0 = !vec3<bool>(0i != _wgslsmith_sub_i32(~arg_0, ~arg_0), false, !(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -14765i), vec2<i32>(arg_0, arg_0)) < 2147483647i));
    let var_1 = func_4(~4294967295u, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(951f))), _wgslsmith_f_op_f32(step(-492f, _wgslsmith_f_op_f32(round(1927f))))), func_3(vec3<bool>(true, false, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c, 16u)], 520f, 2463f) + vec3<f32>(989f, global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)]))), max(~(-2147483647i), func_2()), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-181f, global1.b) - global1.a), -199f, ~global0[_wgslsmith_index_u32(u_input.a, 22u)], 76457u, u_input.a)), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(14245i, 14199i, arg_0, arg_0)), vec4<i32>(-27304i, 0i, arg_0, arg_0) >> (vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(1u, 22u)], 17995u, 2872u) % vec4<u32>(32u)), vec4<i32>(~0i, arg_0, 5728i, 0i << (u_input.a % 32u)))));
    let var_2 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~min(vec3<u32>(1u, 6415u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(58793u, 22u)], u_input.c, global1.c)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 0u, global1.e), select(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 22u)], 40092u), vec3<u32>(39704u, var_1.b.c, var_1.b.c), vec3<bool>(var_0.x, var_0.x, false)))), 22u)], 16u)]);
    let var_3 = func_4(u_input.b, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), Struct_1(_wgslsmith_f_op_vec2_f32(min(global1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 620f) - global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)), ~(global1.e ^ 4294967295u), firstTrailingBit(~u_input.c), global0[_wgslsmith_index_u32(var_1.b.c, 22u)]), var_1.c)).b.c;
    return Struct_1(global1.a, _wgslsmith_f_op_f32(max(967f, var_1.a.x)), ~_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(0u, u_input.b, 1756u)), max(reverseBits(vec3<u32>(var_1.b.d, global0[_wgslsmith_index_u32(var_1.b.e, 22u)], 43590u)), ~vec3<u32>(0u, 4294967295u, 42813u))), ~var_3, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(var_1.b.c, 0u), 0u), 22u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, 41757i), u_input.c, ~(~global1.d & 15183u));
}

