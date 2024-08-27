struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: Struct_1 = Struct_1(0i, 213f, vec2<f32>(1087f, -179f), vec2<i32>(0i, i32(-2147483648)), 4294967295u);

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-1i, -254f, vec2<f32>(809f, -853f), vec2<i32>(0i, 25996i), 57995u), Struct_1(3411i, 626f, vec2<f32>(-1447f, -343f), vec2<i32>(-6808i, -1i), 20458u), Struct_1(36457i, 193f, vec2<f32>(-1782f, -917f), vec2<i32>(1i, -46650i), 1u), Struct_1(-21349i, -1208f, vec2<f32>(-671f, 423f), vec2<i32>(2147483647i, -1i), 68045u), Struct_1(1i, 273f, vec2<f32>(-2048f, -607f), vec2<i32>(-32092i, 5822i), 11222u), Struct_1(-3347i, 2184f, vec2<f32>(712f, -1768f), vec2<i32>(49079i, 2147483647i), 4294967295u), Struct_1(-2918i, -404f, vec2<f32>(-1276f, -1389f), vec2<i32>(i32(-2147483648), 26014i), 56904u), Struct_1(-27668i, 509f, vec2<f32>(538f, 966f), vec2<i32>(-1i, 0i), 4294967295u), Struct_1(10777i, 1382f, vec2<f32>(790f, -1410f), vec2<i32>(1i, 29160i), 0u), Struct_1(0i, 128f, vec2<f32>(294f, -1160f), vec2<i32>(-90349i, 8381i), 51462u), Struct_1(13342i, -249f, vec2<f32>(-2191f, 141f), vec2<i32>(0i, -16108i), 20275u), Struct_1(8686i, 976f, vec2<f32>(799f, -1066f), vec2<i32>(39613i, 2147483647i), 2762u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    global0 = array<Struct_1, 15>();
    let var_0 = global0[_wgslsmith_index_u32(65636u, 15u)];
    let var_1 = var_0.e;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -706f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - arg_2.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.b, arg_1.b)) * 285f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, global1.b, var_0.c.x, -519f), vec4<f32>(1449f, 1000f, arg_3.b, 353f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, 440f, -223f, -519f))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-605f, 357f, -729f)) + _wgslsmith_f_op_vec3_f32(-var_2.xxx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.zzy - var_2.wwy)), true)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1153f)), vec3<f32>(_wgslsmith_f_op_f32(-206f + arg_1.c.x), 730f, -1000f)))));
    return _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(39042u, 65158u))), ~abs(select(vec2<u32>(var_0.e, 1u), vec2<u32>(0u, arg_2.e), true))) >> ((~abs(vec2<u32>(4294967295u, 0u) & vec2<u32>(arg_3.e, var_0.e)) ^ ~_wgslsmith_add_vec2_u32(~vec2<u32>(arg_2.e, 0u), vec2<u32>(65417u, 6629u))) % vec2<u32>(32u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = select(arg_0.d, arg_0.d, arg_2.zx);
    let var_1 = Struct_1(-1i, _wgslsmith_f_op_f32(trunc(arg_0.b)), global1.c, arg_1.d, arg_1.e);
    let var_2 = arg_2.x;
    global0 = array<Struct_1, 15>();
    let var_3 = vec3<u32>(136574u, var_1.e, ~0u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) + _wgslsmith_f_op_f32(round(global1.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - var_1.c.x)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: vec2<u32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(abs(1u), 15u)];
    var var_1 = true;
    var var_2 = !vec4<bool>(!(arg_2 >= _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(global1.e, 12u)], global0[_wgslsmith_index_u32(global1.e, 15u)], vec3<bool>(false, false, false)))), true, all(vec4<bool>(true, true, true, true)), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_3 = Struct_1(~_wgslsmith_sub_i32(countOneBits(-arg_1), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, 5497i, u_input.a.x, u_input.a.x), vec4<i32>(-367i, 72133i, arg_1, -1i))), _wgslsmith_f_op_f32(-arg_2), vec2<f32>(arg_2, var_0.c.x), vec2<i32>(-5714i, u_input.a.x), global1.e);
    let var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_3.x, var_0.e) ^ _wgslsmith_add_u32(var_3.e, 30069u), var_3.e), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(84723u, 3644u, var_0.e, 41958u), vec4<u32>(var_0.e, 19626u, arg_3.x, 58294u)), var_0.e), ~1601u), vec3<u32>(66590u, ~54192u, reverseBits(abs(~arg_3.x))));
    return all(vec3<bool>(select(false, _wgslsmith_div_i32(var_3.a, -30417i) == ~arg_0.x, !var_2.x), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 12>();
    let var_0 = !(!func_2((vec3<i32>(u_input.a.x, global1.a, global1.d.x) ^ vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)) >> (~vec3<u32>(0u, 0u, global1.e) % vec3<u32>(32u)), u_input.a.x, global1.b, select(func_1(vec2<i32>(u_input.a.x, global1.d.x), Struct_1(-1i, global1.b, global1.c, u_input.a.zy, 0u), Struct_1(global1.d.x, global1.c.x, global1.c, u_input.a.xx, 17772u), global0[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.e, 49878u), vec2<u32>(global1.e, 4294967295u)), vec2<bool>(false, false))));
    var var_1 = -(~global1.d);
    var var_2 = 28020u;
    var var_3 = var_1.x & countOneBits(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~_wgslsmith_mult_vec2_i32(u_input.a.yx, global1.d))));
}

