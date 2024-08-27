struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<i32>(0i, -33343i, -1293i, 1i)), Struct_1(vec4<i32>(2147483647i, -19851i, -19943i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 0i, i32(-2147483648), 20111i)), Struct_1(vec4<i32>(i32(-2147483648), -26081i, 1i, 0i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 50688i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 29275i, i32(-2147483648), 30798i)), Struct_1(vec4<i32>(21677i, -25539i, -25612i, i32(-2147483648))), Struct_1(vec4<i32>(-15721i, -35336i, -15647i, 615i)), Struct_1(vec4<i32>(2147483647i, 30091i, 1i, -8229i)), Struct_1(vec4<i32>(10835i, i32(-2147483648), -12476i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, -1i, 4685i, 1i)), Struct_1(vec4<i32>(-64503i, -49304i, -20868i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 41042i, -13284i, 23737i)), Struct_1(vec4<i32>(48239i, 16387i, 1i, -13691i)), Struct_1(vec4<i32>(2147483647i, 6739i, 0i, 0i)), Struct_1(vec4<i32>(1i, i32(-2147483648), 17642i, i32(-2147483648))), Struct_1(vec4<i32>(21283i, -9i, 1i, 33706i)), Struct_1(vec4<i32>(2147483647i, -1i, 1i, -17685i)), Struct_1(vec4<i32>(2147483647i, 1i, -1i, 68474i)), Struct_1(vec4<i32>(2147483647i, 46674i, 1i, -1i)), Struct_1(vec4<i32>(-41058i, -11173i, -27378i, -84670i)), Struct_1(vec4<i32>(11380i, 2147483647i, 1i, -49839i)));

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    global0 = array<Struct_1, 22>();
    return vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -21434i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.x, 7716i), ~1i)), arg_0.x, abs(_wgslsmith_mult_i32(abs(arg_0.x), 1i)), -3179i) & ~(-arg_0);
}

fn func_2() -> u32 {
    global1 = Struct_1(func_3((_wgslsmith_add_vec4_i32(vec4<i32>(global1.a.x, -1i, 0i, 1i), global1.a) >> (vec4<u32>(92027u, u_input.c, u_input.c, 45513u) % vec4<u32>(32u))) & firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -25357i, global1.a.x), vec4<i32>(-1i, -11769i, u_input.a, 27317i)))));
    global0 = array<Struct_1, 22>();
    var var_0 = !(!(!vec4<bool>(true, true, false, all(vec3<bool>(false, false, false)))));
    global1 = global0[_wgslsmith_index_u32(u_input.c, 22u)];
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~(-vec4<i32>(global1.a.x, 0i, u_input.a, u_input.a)), vec4<i32>(i32(-1i) * -2147483647i, global1.a.x, 1i, firstLeadingBit(global1.a.x))), ~func_3(vec4<i32>(0i, 33201i, 0i, -1357i)) & global1.a));
    return 1u;
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~4294967295u, 22u)];
    global1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-392i, global1.a.x, -(~6117i), 1i), max(abs(var_0.a), -var_0.a) & max(countOneBits(vec4<i32>(global1.a.x, 1i, 8404i, 66184i)), vec4<i32>(2147483647i, u_input.a, global1.a.x, global1.a.x) & global1.a)));
    global1 = global0[_wgslsmith_index_u32(10729u, 22u)];
    let var_1 = 378f;
    global1 = Struct_1(-_wgslsmith_mult_vec4_i32(vec4<i32>(~global1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 1i), var_0.a.yx), 1i, var_0.a.x), ~firstLeadingBit(vec4<i32>(-25543i, 2147483647i, var_0.a.x, -17641i))));
    return global0[_wgslsmith_index_u32(~reverseBits(1u), 22u)];
}

fn func_1() -> Struct_1 {
    let var_0 = ~(-global1.a.zx);
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    global1 = global0[_wgslsmith_index_u32(countOneBits(1u), 22u)];
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 22u)];
    return func_4(_wgslsmith_sub_u32(~(u_input.b.x ^ u_input.c), _wgslsmith_clamp_u32(~u_input.b.x, func_2(), u_input.b.x)) ^ 54863u);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global1 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    var var_0 = vec4<bool>(!(1u >= _wgslsmith_mod_u32(_wgslsmith_mult_u32(56502u, u_input.b.x), abs(u_input.b.x))), all(vec4<bool>(true, true, true, true)), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), !all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    var_0 = vec4<bool>(countOneBits(global1.a.x ^ -1i) <= -50474i, any(select(!vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), var_0.wwy, var_0.xwy), var_0.x)) | select(global1.a.x >= min(global1.a.x, 0i), !all(vec3<bool>(true, true, false)), !var_0.x), var_0.x, var_0.x);
    global1 = func_5(func_1());
    let var_1 = ~(~vec2<u32>(~(u_input.c & u_input.b.x), 78252u));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(global1.a.yyx, _wgslsmith_mult_vec3_i32(global1.a.xzz << (vec3<u32>(16192u, 22586u, var_1.x) % vec3<u32>(32u)), vec3<i32>(0i, global1.a.x, -11885i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(155f)) * _wgslsmith_div_f32(-293f, 327f)), 436f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(602f - -245f), -260f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-977f, -517f), vec2<f32>(164f, 809f), vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 554f))) + vec2<f32>(1087f, 929f))))), select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 16740u, 44513u, u_input.c), vec4<u32>(35337u, 17451u, 4294967295u, 85461u) >> (vec4<u32>(4294967295u, 26190u, var_1.x, 1u) % vec4<u32>(32u))), ~u_input.b.x), select(u_input.b, ~(~vec2<u32>(var_1.x, u_input.b.x)), select(var_0.ww, vec2<bool>(true, true), u_input.b.x >= var_1.x)), any(var_0.xx)));
}

