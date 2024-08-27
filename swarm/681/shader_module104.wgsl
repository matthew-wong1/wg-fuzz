struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<bool>(false, true, true, true), vec4<u32>(0u, 24086u, 22745u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, false), vec4<u32>(1u, 39373u, 16910u, 93897u)), Struct_1(vec4<bool>(true, true, true, false), vec4<u32>(0u, 37299u, 43488u, 13990u)), Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(20603u, 8311u, 0u, 53004u)), Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(8168u, 0u, 37800u, 10617u)), Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(16234u, 0u, 96812u, 1u)), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(4294967295u, 48593u, 4294967295u, 16794u)), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), vec4<u32>(64703u, 9308u, 23240u, 33218u)), Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(38205u, 2705u, 37233u, 0u)), Struct_1(vec4<bool>(false, true, true, true), vec4<u32>(69398u, 123721u, 26777u, 1u)), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(19016u, 62809u, 4491u, 1u)), Struct_1(vec4<bool>(true, false, false, false), vec4<u32>(1u, 1u, 4294967295u, 1u)), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(19970u, 101381u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, false, true, true), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(32970u, 69412u, 39852u, 93812u)), Struct_1(vec4<bool>(false, true, true, true), vec4<u32>(1u, 37750u, 4294967295u, 64488u)), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(80903u, 29135u, 71104u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(35127u, 0u, 4294967295u, 1u)));

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(true, true, false, false), vec4<u32>(82195u, 70278u, 4302u, 0u)));

var<private> global4: array<vec2<f32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-393f, 386f, -1578f)) - vec3<f32>(-1012f, 639f, -1345f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-2048f)), _wgslsmith_f_op_f32(min(148f, -515f)), all(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1055f, 2056f)) + _wgslsmith_f_op_f32(-845f * -100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1223f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1618f, 725f, 717f) + vec3<f32>(1f, 1f, 1f))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = select(vec2<bool>(~(-u_input.b) == _wgslsmith_div_i32(u_input.b, u_input.b & 0i), false), select(!arg_0.a.wy, arg_0.a.yx, !arg_0.a.x), arg_0.a.xz);
    var var_1 = global3[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(~u_input.a, u_input.a), _wgslsmith_sub_u32(7041u, ~arg_0.b.x) & _wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(u_input.a), 1u), abs(_wgslsmith_mod_u32(u_input.a, arg_0.b.x)))), 1u)];
    let var_2 = arg_0.b.x >> (1u % 32u);
    let var_3 = u_input.b;
    var var_4 = Struct_1(select(vec4<bool>(var_1.b.x != (u_input.a << (1u % 32u)), arg_0.a.x, select(true, var_3 != var_3, !var_0.x), arg_0.a.x), vec4<bool>(true, false, true, true), vec4<bool>((var_1.b.x == 22996u) && any(vec3<bool>(arg_0.a.x, arg_0.a.x, false)), var_0.x, any(var_1.a.xyw) && true, var_1.a.x)), arg_0.b);
    return vec4<u32>(u_input.a, _wgslsmith_mult_u32(~arg_0.b.x, arg_0.b.x), _wgslsmith_sub_u32(50335u, ~(~arg_0.b.x << (firstLeadingBit(u_input.a) % 32u))), 4294967295u);
}

fn func_2(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(!(!vec4<bool>(true, true, true, any(vec2<bool>(arg_0.a.x, arg_0.a.x)))), _wgslsmith_mod_vec4_u32(arg_0.b, min(func_3(global0[_wgslsmith_index_u32(u_input.a, 8u)]), ~(vec4<u32>(arg_0.b.x, arg_0.b.x, u_input.a, 1u) & arg_0.b))));
    global3 = array<Struct_1, 1>();
    global4 = array<vec2<f32>, 21>();
    var var_1 = min(abs(_wgslsmith_add_vec2_i32(-vec2<i32>(42112i, u_input.b) ^ countOneBits(vec2<i32>(-8898i, -7943i)), max(vec2<i32>(-8679i, u_input.b) >> (vec2<u32>(18336u, 42398u) % vec2<u32>(32u)), reverseBits(vec2<i32>(-2147483647i, u_input.b))))), vec2<i32>(2147483647i, -15405i));
    var var_2 = var_0.a;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -309f, 615f, -648f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -534f, 699f, -1200f) - vec4<f32>(1095f, -451f, 986f, -237f)))))), -86422i, min(vec2<u32>(_wgslsmith_mod_u32(1u, u_input.a), ~4294967295u), vec2<u32>(firstTrailingBit(0u), arg_0.b.x)) >> (arg_0.b.zz % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-929f)) * -695f), _wgslsmith_f_op_f32(f32(-1f) * -855f), 115f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1023f, -629f)), -315f))), _wgslsmith_mod_vec2_i32(vec2<i32>(min(0i, ~24848i), -1i), _wgslsmith_add_vec2_i32(~abs(vec2<i32>(var_1.x, u_input.b)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_1.x), vec2<i32>(-29783i, var_1.x), vec2<i32>(-42438i, 37858i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()))));
    global3 = array<Struct_1, 1>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 8u)];
    global3 = array<Struct_1, 1>();
    global3 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = func_2(Struct_1(select(!(!vec4<bool>(var_1.a.x, false, true, false)), var_1.a, vec4<bool>(var_0.x >= 803f, any(var_1.a), var_1.a.x || true, false | var_1.a.x)), var_1.b));
}

