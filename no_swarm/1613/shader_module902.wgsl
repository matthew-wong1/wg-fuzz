struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: bool = false;

var<private> global2: vec2<f32> = vec2<f32>(271f, 502f);

var<private> global3: array<Struct_2, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global0 = array<Struct_1, 3>();
    var var_0 = global3[_wgslsmith_index_u32(0u, 18u)];
    var var_1 = var_0.b;
    let var_2 = var_1.b;
    global2 = vec2<f32>(336f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -981f) * _wgslsmith_f_op_f32(1721f + -1760f)), global2.x) - 354f));
    return 1u;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1039f, 254f, global2.x), arg_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, arg_1.b.x, global2.x) + vec3<f32>(arg_1.b.x, 966f, -2245f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(arg_1.b, _wgslsmith_f_op_vec3_f32(arg_1.b - vec3<f32>(arg_1.b.x, global2.x, -166f)), vec3<bool>(false, true, true))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x))))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = vec2<bool>(true, u_input.a >= (i32(-1i) * -_wgslsmith_mult_i32(arg_0.a, -1i)));
    var var_1 = Struct_2(1u, arg_0, ~vec2<u32>(1u, 1u), Struct_1(reverseBits(-63884i), vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(global2.x * _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)), arg_0.b.x)));
    let var_2 = Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b - _wgslsmith_f_op_vec3_f32(ceil(var_1.b.b))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) - 2045f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.d.b.x))), _wgslsmith_f_op_f32(min(arg_0.b.x, -277f)))));
    let var_3 = ~_wgslsmith_add_vec2_u32(~select(var_1.c, vec2<u32>(49232u, 106822u) | var_1.c, true), vec2<u32>(~_wgslsmith_div_u32(1u, 22113u), ~_wgslsmith_add_u32(var_1.c.x, var_1.c.x)));
    var var_4 = global3[_wgslsmith_index_u32(var_1.c.x, 18u)];
    return _wgslsmith_mod_i32(arg_0.a, 0i);
}

fn func_1() -> Struct_1 {
    var var_0 = ~vec4<i32>(9887i, u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a), u_input.a);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1570f)));
    var var_2 = _wgslsmith_div_u32(firstTrailingBit(~1u), ~_wgslsmith_mod_u32(1u, min(1u, 1u)));
    let var_3 = true;
    var_2 = 65673u;
    return Struct_1(func_4(Struct_1(u_input.a >> (func_2(vec3<u32>(4455u, 4294967295u, 0u)) % 32u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(var_0.x, 2147483647i, u_input.a, 0i), Struct_1(22933i, vec3<f32>(global2.x, -326f, 416f)), var_0.yy)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, 323f, global2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-641f, 1444f, global2.x))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, -725f, -854f), vec3<f32>(global2.x, -801f, 1000f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1029f, 1000f, global2.x)))))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global1 = true;
    global3 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), max(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(39022u, 4768u), ~vec2<u32>(10858u, 0u))), vec2<u32>(select(_wgslsmith_div_u32(0u, 75061u), ~42838u, true), ~(~15142u))));
    var var_1 = ~arg_1.a;
    global0 = array<Struct_1, 3>();
    return _wgslsmith_dot_vec3_u32(~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 21874u, var_0.x)))), countOneBits(~vec3<u32>(_wgslsmith_div_u32(var_0.x, var_0.x), _wgslsmith_clamp_u32(5629u, var_0.x, var_0.x), ~var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global2.x - 345f);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, 1641f))), _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -1184f), vec2<f32>(1515f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-175f, -939f), vec2<f32>(616f, global2.x)))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(361f, -1146f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1000f)), any(vec3<bool>(false, false, true))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, -297f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-207f, 218f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))));
    let var_1 = ~_wgslsmith_sub_vec2_u32(abs(firstLeadingBit(vec2<u32>(58565u, 19700u))) << (select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<bool>(true, true)) % vec2<u32>(32u)), vec2<u32>(1u, 1u));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(41668u, var_1.x) << (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(49381u, var_1.x)) % vec2<u32>(32u))), select(abs(vec2<u32>(var_1.x, var_1.x)), var_1, all(vec3<bool>(true, true, true)) != true)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1 & vec2<u32>(var_1.x, 4294967295u)), _wgslsmith_dot_vec2_u32(~var_1, ~vec2<u32>(var_1.x, var_1.x))), 112102u, abs(func_5(vec4<f32>(-167f, global2.x, -508f, -190f), func_1(), -2672f))), 19996u, var_1.x);
    let var_3 = -vec2<i32>(_wgslsmith_div_i32(-10001i, -1i), -(1i << (var_2.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(~_wgslsmith_add_u32(9434u, var_2.x), ~2373u));
}

