struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: vec3<u32> = vec3<u32>(18505u, 96546u, 1u);

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(i32(-2147483648), 2147483647i, true), Struct_1(24455i, 15021i, false), Struct_1(-4991i, 1i, true), Struct_1(-64377i, -10626i, true), Struct_1(-6413i, -1i, true), Struct_1(-1i, 1i, false), Struct_1(17566i, -1i, true), Struct_1(-66922i, 1i, false), Struct_1(16115i, 22980i, false), Struct_1(i32(-2147483648), -1074i, true), Struct_1(2147483647i, -13201i, false), Struct_1(0i, 0i, false), Struct_1(-17689i, 11846i, false), Struct_1(35898i, 1283i, true), Struct_1(0i, 27524i, true), Struct_1(4342i, 28430i, true), Struct_1(-14090i, -50857i, false), Struct_1(-38170i, 0i, true), Struct_1(2147483647i, 27119i, false), Struct_1(i32(-2147483648), i32(-2147483648), false), Struct_1(-4146i, -28561i, false), Struct_1(11654i, -1i, true), Struct_1(28258i, 0i, true), Struct_1(-13847i, 9388i, false), Struct_1(1i, 66548i, false), Struct_1(-47450i, -9372i, true));

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global1.x), 26u)];
    var var_1 = global2[_wgslsmith_index_u32(u_input.a, 26u)];
    let var_2 = var_1.b;
    return var_1.b;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_1 {
    global3 = vec4<bool>(true, func_3(false) <= ~(-13764i), true, all(vec2<bool>(all(select(global3.xw, global3.wz, global3.yw)), u_input.b <= arg_1.x)));
    global2 = array<Struct_1, 26>();
    var var_0 = !select(select(!global3.xwz, global3.xyz, u_input.a < countOneBits(23754u)), global3.wxx, vec3<bool>(global3.x, true, true));
    var_0 = select(vec3<bool>(select(true, !(var_0.x | global3.x), all(select(vec4<bool>(var_0.x, false, global3.x, var_0.x), vec4<bool>(false, global3.x, false, true), vec4<bool>(false, var_0.x, var_0.x, false)))), false, !any(vec2<bool>(var_0.x, false))), select(select(vec3<bool>(true | global3.x, true, global3.x), select(global3.wxw, vec3<bool>(var_0.x, true, true), !global3.xyy), vec3<bool>(true, true, select(var_0.x, false, false))), global3.wwy, !select(vec3<bool>(true, global3.x, false), vec3<bool>(var_0.x, false, var_0.x), true)), select(global3.yyw, !(!vec3<bool>(true, true, var_0.x)), true));
    let var_1 = vec4<i32>(u_input.b, firstTrailingBit(arg_2.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(2920i, abs(-7721i)), arg_1.x), 2147483647i);
    return Struct_1(arg_1.x, 0i, var_0.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    global0 = array<vec2<f32>, 11>();
    let var_0 = 1u;
    var var_1 = vec4<i32>(~0i, 13976i, -firstLeadingBit(-u_input.b), firstTrailingBit(-1i));
    var var_2 = countOneBits(min(~4294967295u, u_input.a));
    let var_3 = Struct_4(34231i, arg_1, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), -243f) * arg_0.wx), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1043f)), 325f))));
    return -1067f;
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f), 469f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1143f, -1289f, -976f, -2035f))) - vec4<f32>(366f, -1419f, -1003f, -791f)), Struct_2(vec2<i32>(-28600i, u_input.b) ^ vec2<i32>(arg_0, u_input.b), global1.x, ~u_input.a, func_2(global1.x, vec2<i32>(-2147483647i, arg_0), vec4<i32>(arg_0, u_input.b, -24238i, 2147483647i), vec3<f32>(204f, -253f, 590f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 117f)) - -143f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, -936f)))));
    var var_2 = global2[_wgslsmith_index_u32(~u_input.a, 26u)];
    let var_3 = var_2.c;
    var var_4 = ~(~reverseBits(max(_wgslsmith_mult_u32(global1.x, 0u), _wgslsmith_div_u32(0u, global1.x))));
    return 88153u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1.x, u_input.a, 30528u), vec4<u32>(u_input.a, u_input.a, 1u, 60349u)), func_1(2147483647i)) >> (~global1.zz % vec2<u32>(32u))), _wgslsmith_f_op_f32(398f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(-647f - -663f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1099f))))), _wgslsmith_mult_vec2_u32(max(reverseBits(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(99722u, u_input.a)), global1.zz) >> (vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(0u, u_input.a)), ~54197u) % vec2<u32>(32u)), _wgslsmith_sub_vec4_i32(~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b))), ~(~vec4<i32>(2147483647i, 0i, u_input.b, -2147483647i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, global1.x), vec4<u32>(global1.x, u_input.a, u_input.a, 1u)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(1084f, 201f, 474f), !global3.wwy)))))));
}

