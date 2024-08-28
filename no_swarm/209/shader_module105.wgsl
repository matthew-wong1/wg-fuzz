struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(4294967295u, 799f, 2147483647i), Struct_1(0u, -1138f, i32(-2147483648)), Struct_1(1u, -387f, i32(-2147483648)), Struct_1(18365u, -1327f, 2147483647i), Struct_1(45635u, -883f, -1i), Struct_1(120098u, 1464f, -18518i), Struct_1(19054u, -577f, -18702i), Struct_1(50004u, 498f, 2147483647i), Struct_1(39879u, -123f, 1i), Struct_1(1u, 1465f, 1i), Struct_1(30880u, -1181f, -48430i), Struct_1(67895u, -450f, 60070i), Struct_1(71178u, -750f, 0i), Struct_1(4294967295u, 649f, 22017i), Struct_1(1u, 378f, -8134i), Struct_1(39938u, 129f, 5344i), Struct_1(4294967295u, -1101f, -36604i), Struct_1(34472u, -1075f, i32(-2147483648)), Struct_1(1u, 259f, 1i), Struct_1(4294967295u, -366f, -45922i), Struct_1(72396u, -2269f, 18660i), Struct_1(1u, 900f, -1i), Struct_1(4294967295u, -710f, -30888i), Struct_1(1u, -206f, 16571i), Struct_1(7770u, -356f, 1i));

var<private> global1: f32 = 456f;

var<private> global2: array<vec2<f32>, 32>;

var<private> global3: Struct_1 = Struct_1(4294967295u, 249f, 28596i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global1 = -1000f;
    let var_0 = Struct_1(0u, -874f, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(global3.c, u_input.b.x) << (min(_wgslsmith_sub_u32(0u, global3.a), ~global3.a) % 32u), u_input.a.x));
    global0 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_f_op_f32(abs(-713f));
    var var_2 = Struct_1(_wgslsmith_div_u32(max(27592u, 4294967295u), _wgslsmith_mod_u32(global3.a, 4294967295u)), -130f, abs(-_wgslsmith_sub_i32(min(-48506i, global3.c), -3687i)));
    return ~(~1u);
}

fn func_2() -> Struct_1 {
    let var_0 = max(countOneBits(~vec4<u32>(20890u, u_input.c.x, u_input.d.x, u_input.d.x) >> ((vec4<u32>(46088u, 27997u, 0u, 57415u) & vec4<u32>(0u, 2788u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u))), vec4<u32>(func_3(vec2<bool>(true, false)), 1u, _wgslsmith_div_u32(57358u, ~66723u), u_input.c.x)) >> (abs(min(vec4<u32>(_wgslsmith_sub_u32(global3.a, 10653u), 60594u, 10153u, 1u), vec4<u32>(u_input.c.x, global3.a, global3.a, global3.a) >> (~vec4<u32>(55960u, u_input.c.x, u_input.d.x, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global3 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(var_0, var_0) ^ ~(~_wgslsmith_mult_u32(u_input.d.x ^ global3.a, 5660u)), 25u)];
    var var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, false, true)), false, true), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))), vec3<bool>(true, all(vec2<bool>(true, false)) || (984f >= global3.b), true), select(vec3<bool>(true, 0u >= global3.a, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), true));
    return Struct_1(_wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(u_input.d.x, global3.a, 0u, 4294967295u))), vec4<u32>(countOneBits(~51304u), 37863u, _wgslsmith_dot_vec4_u32(~vec4<u32>(22480u, global3.a, 1u, var_0.x), vec4<u32>(56139u, 45677u, 18446u, 0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_0.wwy, var_0.xzy), 9153u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.b + 925f))), u_input.b.x);
}

fn func_1() -> vec3<f32> {
    var var_0 = vec2<i32>(abs(global3.c), _wgslsmith_add_i32(~(-u_input.b.x) ^ 21656i, ~(-u_input.b.x)));
    global1 = global3.b;
    global0 = array<Struct_1, 25>();
    global1 = global3.b;
    let var_1 = func_2();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1542f, var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1()))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, 1313f, 979f) + vec3<f32>(global3.b, global3.b, -546f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.b, global3.b, global3.b))))))));
    var var_1 = func_2();
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_clamp_vec2_i32(u_input.a.xz, _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(36210i, var_1.c)), vec2<i32>(global3.c, 1i), -vec2<i32>(11450i, 10231i)), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, 36611i)), vec2<i32>(func_2().c, ~31404i))) & vec2<i32>(u_input.a.x >> (67006u % 32u), ~0i);
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.a, 22899u), 25u)];
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(957f, -317f) * 941f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1058f * var_0.x) + -276f))))), var_4.a, -1045f);
}

