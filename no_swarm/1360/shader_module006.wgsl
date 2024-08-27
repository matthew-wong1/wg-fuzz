struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

var<private> global1: vec3<i32> = vec3<i32>(-7554i, 2147483647i, 20774i);

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    var var_0 = ~(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 44605i, -2147483647i, u_input.a), vec4<i32>(77427i, -2444i, -1i, u_input.a)), u_input.a));
    global0 = array<vec4<i32>, 22>();
    global2 = select(vec4<bool>(false, true, all(global2.wxz), !(!arg_0.a.x && arg_1)), vec4<bool>((_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]) & global1.x) >= select(select(global1.x, u_input.b, arg_1), -44838i, true), arg_1 | false, !(true && (880f > arg_0.c)), true), arg_0.a.x);
    let var_1 = !(!select(select(!vec4<bool>(arg_1, global2.x, arg_1, false), vec4<bool>(true, arg_0.a.x, arg_1, global2.x), select(vec4<bool>(false, arg_1, arg_0.a.x, false), vec4<bool>(arg_0.a.x, global2.x, arg_1, false), vec4<bool>(arg_1, false, true, global2.x))), !vec4<bool>(false, arg_0.a.x, global2.x, true), (2147483647i >= u_input.c.x) & false));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.b.x, -625f, true))))));
    return arg_0.b;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-539f, 460f)))), vec2<f32>(-1642f, _wgslsmith_div_f32(-321f, -731f)), global2.zw)) + _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<bool>(arg_0, global2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-365f, 360f)), _wgslsmith_f_op_f32(round(253f))), all(select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(arg_0, false, arg_0), true))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1302f, _wgslsmith_f_op_f32(-266f * 1271f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(803f, 1000f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1070f, 1017f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2134f, -859f), vec2<f32>(576f, -1130f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), -953f) - vec2<f32>(_wgslsmith_f_op_f32(ceil(138f)), var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) + vec2<f32>(1f, 1f)) - vec2<f32>(1000f, 1267f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1013f, var_0.x), 745f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1282f)))))));
    var var_1 = global0[_wgslsmith_index_u32(24181u, 22u)];
    var var_2 = Struct_4(!global2.wzz, true, 66231u, firstTrailingBit(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(40307u, 4294967295u, 4294967295u)), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 0u, 4294967295u)) | firstLeadingBit(select(vec3<u32>(0u, 1u, 75294u), vec3<u32>(4294967295u, 1u, 43974u), arg_0))), 4294967295u);
    let var_3 = Struct_1(vec2<bool>(var_2.a.x, (!var_2.a.x == all(global2.zx)) && true), vec2<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))), 356f);
    return Struct_2(var_3, var_2.d.xz, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-193f, _wgslsmith_f_op_f32(106f + 2219f), _wgslsmith_div_f32(312f, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_3.c, -771f))))))), Struct_1(var_3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c, var_3.c) + var_3.b) - var_3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.c, _wgslsmith_f_op_f32(1000f * var_3.c))) * -1062f)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    let var_0 = reverseBits(global1.x);
    global0 = array<vec4<i32>, 22>();
    var var_1 = Struct_4(global2.zwz, func_2(arg_0).d.a.x, arg_1.b.x, vec3<u32>(select(func_2(arg_0).b.x, func_2(true).b.x, true), ~_wgslsmith_div_u32(arg_2.a.b.x, arg_2.a.b.x), ~arg_1.b.x) | _wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_2.a.b.x, 1u, 57447u)), vec3<u32>(arg_1.b.x, arg_1.b.x, 4639u)), ~1u);
    global0 = array<vec4<i32>, 22>();
    var var_2 = func_2(false).a;
    return -4753i;
}

fn func_1() -> vec3<i32> {
    let var_0 = -2147483647i ^ _wgslsmith_mod_i32(func_4(all(select(vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(true, global2.x, global2.x, true), true)), func_2(false), Struct_3(func_2(global2.x))), global1.x);
    var var_1 = abs(global1.zy);
    var_1 = u_input.c;
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_mult_vec2_u32(func_2(func_2(true).d.a.x).b, vec2<u32>(_wgslsmith_div_u32(23787u, 27762u), _wgslsmith_dot_vec3_u32(vec3<u32>(13861u, 56726u, 1u), vec3<u32>(83838u, 1u, 0u)))));
    var var_3 = ~_wgslsmith_clamp_u32(~75478u, var_2.x, _wgslsmith_mult_u32(firstLeadingBit(abs(var_2.x)), 4294967295u));
    return vec3<i32>(1i, global1.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec3<i32>(-1i) * -(~(~vec3<i32>(-2147483647i, u_input.b, global1.x)))) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(func_1(), abs(vec3<i32>(0i, u_input.b, -4820i))), vec3<i32>(-global1.x, u_input.b, countOneBits(55059i)), -vec3<i32>(2147483647i, global1.x, 2147483647i)), _wgslsmith_add_vec3_i32(min(vec3<i32>(14639i, global1.x, u_input.c.x), vec3<i32>(22443i, global1.x, -2147483647i) ^ vec3<i32>(0i, u_input.a, u_input.a)), abs(vec3<i32>(global1.x, 2147483647i, u_input.b)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b), vec3<i32>(global1.x, -2147483647i, -29261i))), _wgslsmith_sub_vec3_i32(func_1(), ~vec3<i32>(-2147483647i, u_input.c.x, -13359i)));
    global2 = vec4<bool>(true, !any(!vec3<bool>(global2.x, global2.x, false)), false, (i32(-1i) * -10675i) == ~global1.x);
    global2 = vec4<bool>(!global2.x, all(global2.ywz), all(!(!vec4<bool>(true, global2.x, false, global2.x))), global2.x);
    var var_1 = func_2(true);
    global1 = -(~vec3<i32>(u_input.a, u_input.c.x << (max(var_1.b.x, 24363u) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, var_0.x), u_input.b)));
    var var_2 = Struct_4(select(global2.zzx, select(!global2.wxw, vec3<bool>(!var_1.d.a.x, var_1.a.a.x, -1i <= u_input.c.x), !select(var_1.d.a.x, global2.x, true)), vec3<bool>(var_1.d.a.x, func_2(func_2(global2.x).a.a.x).d.a.x, any(select(vec4<bool>(global2.x, var_1.a.a.x, global2.x, global2.x), vec4<bool>(false, var_1.a.a.x, var_1.d.a.x, false), vec4<bool>(true, var_1.a.a.x, global2.x, global2.x))))), any(global2.yxy), 1u, vec3<u32>(54859u & firstLeadingBit(var_1.b.x), var_1.b.x, 93662u) << (vec3<u32>(var_1.b.x, 1u, select(~0u, 57419u, var_1.d.a.x)) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_dot_vec2_u32(countOneBits(var_1.b), abs(vec2<u32>(var_1.b.x, 1674u))) & var_1.b.x));
    let var_3 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_2.e, _wgslsmith_mod_u32(58471u, var_2.c), ~4294967295u)), ~(~abs(~var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, -300f, var_1.a.c))))), -16717i, min(func_2(any(vec4<bool>(global2.x, true, true, true))).b, var_1.b ^ var_3.zz) << (~(_wgslsmith_add_vec2_u32(var_3.xy, var_2.d.yz) | ~vec2<u32>(1u, var_2.c)) % vec2<u32>(32u)));
}

