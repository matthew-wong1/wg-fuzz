struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
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

var<private> global0: Struct_2 = Struct_2(false, Struct_1(vec4<f32>(349f, 1042f, -2417f, -292f)), vec4<u32>(1u, 12331u, 66867u, 13786u));

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(true, 1978f), Struct_3(true, 1134f), Struct_3(true, -1287f), Struct_3(true, -1395f), Struct_3(false, -1005f), Struct_3(true, 1000f), Struct_3(true, 133f), Struct_3(false, 1217f), Struct_3(true, -618f), Struct_3(true, -485f), Struct_3(false, -618f), Struct_3(false, -306f), Struct_3(false, -297f), Struct_3(true, -878f), Struct_3(false, 248f), Struct_3(false, 276f), Struct_3(false, 411f), Struct_3(true, 877f), Struct_3(true, 959f), Struct_3(true, -785f), Struct_3(false, -344f), Struct_3(false, 996f), Struct_3(false, 190f), Struct_3(true, 2322f), Struct_3(true, 575f), Struct_3(false, -387f), Struct_3(false, -875f), Struct_3(true, 733f), Struct_3(false, -668f));

var<private> global2: Struct_3;

var<private> global3: f32 = 523f;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_u32(23876u, select(~0u, 16432u, true));
    global0 = arg_2;
    global3 = arg_2.b.a.x;
    let var_1 = global1[_wgslsmith_index_u32(~9493u, 29u)];
    let var_2 = ~var_0;
    return _wgslsmith_div_vec3_u32(~(arg_2.c.ywx >> (min(global0.c.xxy, global0.c.wyw & vec3<u32>(var_2, 38911u, arg_2.c.x)) % vec3<u32>(32u))), ~arg_2.c.yzx);
}

fn func_3(arg_0: vec3<u32>) -> Struct_2 {
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~func_2(vec2<f32>(global2.b, 787f), arg_0.zx, Struct_2(global0.a, Struct_1(vec4<f32>(-928f, global0.b.a.x, global2.b, global0.b.a.x)), vec4<u32>(22157u, 74291u, 46389u, global0.c.x))).x, 4294967295u, 1u), global0.c.zyw), arg_0), 29u)];
    global2 = global1[_wgslsmith_index_u32(global0.c.x, 29u)];
    global0 = Struct_2(any(!vec2<bool>(global0.a, global2.a)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.a.x)) - global0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-190f, global2.b, global2.a)) * 569f), _wgslsmith_f_op_f32(global0.b.a.x + _wgslsmith_f_op_f32(-global0.b.a.x)), -907f)), global0.c);
    global1 = array<Struct_3, 29>();
    global2 = Struct_3(all(vec3<bool>(global2.b >= 1074f, global0.a, true)) && global2.a, global2.b);
    return Struct_2(global0.a, global0.b, global0.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_4 {
    global2 = Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a.x * 651f)));
    global0 = Struct_2(func_3(arg_0.c.wzw).a, func_3(vec3<u32>(37043u, 0u, ~func_3(arg_0.c.zzz).c.x)).b, ~vec4<u32>(arg_0.c.x, ~91503u, 0u, arg_0.c.x));
    var var_0 = abs(vec2<i32>(~u_input.c, -1i));
    var_0 = arg_1.xz;
    var var_1 = all(select(!(!select(vec4<bool>(global2.a, true, global2.a, false), vec4<bool>(true, true, true, false), arg_0.a)), vec4<bool>(!global2.a || !global0.a, false, arg_0.a, false), vec4<bool>(true, true, global2.a, true)));
    return Struct_4(-183f);
}

fn func_1() -> Struct_4 {
    global1 = array<Struct_3, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.a)) - vec4<f32>(_wgslsmith_f_op_f32(827f * global0.b.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), global0.b.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)))), -1545f));
    let var_1 = _wgslsmith_f_op_f32(-global0.b.a.x);
    global2 = Struct_3(true, _wgslsmith_f_op_f32(-global2.b));
    global1 = array<Struct_3, 29>();
    return func_4(func_3(~_wgslsmith_mult_vec3_u32(global0.c.xyy, global0.c.zww) << (_wgslsmith_div_vec3_u32(func_2(global0.b.a.yy, global0.c.xx, Struct_2(global2.a, global0.b, vec4<u32>(585u, 4294967295u, global0.c.x, global0.c.x))), global0.c.yxw) % vec3<u32>(32u))), ~(-firstTrailingBit(select(vec3<i32>(u_input.c, 0i, 2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<bool>(false, global0.a, global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 912f;
    let var_1 = all(vec4<bool>(!(_wgslsmith_sub_u32(u_input.a, u_input.d) >= global0.c.x), global2.a && all(vec4<bool>(true, true, global2.a, global2.a)), global2.a, -u_input.c >= (u_input.c << (abs(u_input.d) % 32u))));
    global1 = array<Struct_3, 29>();
    var var_2 = func_1();
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), -vec2<i32>(27901i, u_input.c), max(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-4730i, u_input.c))) & (_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.c, 67417i), vec2<i32>(u_input.c, u_input.c)) >> (~global0.c.wy % vec2<u32>(32u)))));
}

