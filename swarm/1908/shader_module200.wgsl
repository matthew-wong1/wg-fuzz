struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(1042f, 2371f, 2026f), 0i)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(1000f, -187f, 976f), 13863i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1369f, -302f, 134f), 1i)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-480f, -808f, -1078f), 0i)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(1056f, -997f, 2611f), 0i)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(383f, 383f, -1191f), -6496i)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-865f, 1000f, 230f), 0i)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-642f, -736f, -698f), 1i)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-1000f, -2922f, -447f), 3824i)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-286f, -734f, -1000f), 0i)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-405f, 157f, 723f), i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-401f, -1000f, -543f), 2147483647i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-1629f, 500f, -118f), -52026i)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-1218f, -1724f, -1991f), -75500i)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1578f, -480f, 1008f), 2147483647i)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(920f, 1081f, -1344f), 37910i)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-718f, 1633f, -1000f), 38792i)));

var<private> global2: array<i32, 28> = array<i32, 28>(-17371i, 32017i, -25009i, 0i, 2147483647i, 1i, -45463i, -24430i, -57591i, 1i, 1i, i32(-2147483648), -54350i, 2147483647i, 61340i, 42259i, -25512i, -1399i, -1i, 4743i, 11441i, -10561i, 2147483647i, -29898i, -12566i, -67712i, -21880i, 12387i);

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(541f, -980f, -129f), -49034i);

var<private> global4: array<vec4<bool>, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> Struct_4 {
    global1 = array<Struct_2, 17>();
    return Struct_4(global3.a.wyx, 680f, Struct_3(~(_wgslsmith_div_vec4_i32(vec4<i32>(24236i, -1i, -44765i, global2[_wgslsmith_index_u32(1659u, 28u)]), vec4<i32>(u_input.d, 2147483647i, u_input.d, global3.c)) & firstTrailingBit(vec4<i32>(global3.c, global3.c, -2147483647i, -26828i)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_5) -> Struct_1 {
    global4 = array<vec4<bool>, 20>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(16337u, 5141u), 32u)];
    var var_1 = func_2();
    global1 = array<Struct_2, 17>();
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(arg_2.a.x, 65851u), 36179u, 8005u, ~(~(u_input.c & 6455u)) ^ (34011u >> (1u % 32u)));
    return Struct_1(vec4<bool>(!(_wgslsmith_f_op_f32(trunc(arg_1.b.x)) < _wgslsmith_f_op_f32(max(var_0.b, 268f))), any(var_0.a), all(vec3<bool>(!arg_1.a.x, var_0.a.x, any(vec4<bool>(var_0.a.x, true, global3.a.x, var_1.a.x)))), false), vec3<f32>(arg_1.b.x, -1111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-933f * -1580f) + _wgslsmith_f_op_f32(360f - var_1.b)) * 1450f)), -2147483647i);
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(0u, 17u)];
    let var_1 = any(global3.a.wz);
    global2 = array<i32, 28>();
    let var_2 = global3.b.zz;
    global0 = array<Struct_4, 32>();
    return !select(func_2().a.yy, !var_0.a.a.xz, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-global3.b.x)));
    global0 = array<Struct_4, 32>();
    return u_input.b.wwz;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(global3.a, Struct_1(global4[_wgslsmith_index_u32(u_input.b.x, 20u)], _wgslsmith_f_op_vec3_f32(-global3.b), 22310i), Struct_5(~vec3<u32>(u_input.a, u_input.b.x, u_input.c), u_input.b));
    var var_0 = ~select(abs(abs(1u)), _wgslsmith_dot_vec2_u32(u_input.b.yy | vec2<u32>(u_input.a, 2290u), vec2<u32>(u_input.b.x, u_input.c)) >> (~4294967295u % 32u), true);
    global1 = array<Struct_2, 17>();
    var var_1 = vec2<bool>(u_input.a > _wgslsmith_clamp_u32(1u, ~(~u_input.c), ~u_input.a), all(vec4<bool>(true, false, all(global4[_wgslsmith_index_u32(min(0u, 4294967295u), 20u)]), false)));
    let var_2 = max(u_input.d, -30435i);
    let var_3 = Struct_5(func_4(Struct_1(vec4<bool>(var_1.x, false, global3.a.x, true), _wgslsmith_f_op_vec3_f32(-global3.b), firstTrailingBit(1i)), !func_3(Struct_5(vec3<u32>(24948u, 0u, 0u), vec4<u32>(u_input.c, u_input.b.x, 4294967295u, u_input.b.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(-94200i, var_2, u_input.d), vec3<i32>(u_input.d, 4041i, global3.c)) | select(vec3<i32>(var_2, -24463i, 19036i), vec3<i32>(var_2, global2[_wgslsmith_index_u32(9130u, 28u)], u_input.d), global3.a.zww)) << (u_input.b.yyx % vec3<u32>(32u)), vec4<u32>(4294967295u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a >> (u_input.c % 32u), func_4(Struct_1(vec4<bool>(var_1.x, var_1.x, false, global3.a.x), global3.b, u_input.d), global3.a.zy, vec3<i32>(-55279i, 9085i, var_2)).x, u_input.a, 18320u), countOneBits(~vec4<u32>(43044u, u_input.c, 1u, u_input.c))), ~1u));
    global2 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

