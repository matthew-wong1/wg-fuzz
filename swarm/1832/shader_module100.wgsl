struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(50027u, 1u), -218f), true, Struct_1(vec2<u32>(0u, 35665u), -441f), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 1u), 1208f));

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 468f), true, Struct_1(vec2<u32>(25479u, 32852u), -2292f), vec3<i32>(11752i, 0i, -54187i), Struct_1(vec2<u32>(1u, 51380u), 1664f)), Struct_2(Struct_1(vec2<u32>(27503u, 4294967295u), -1367f), true, Struct_1(vec2<u32>(4294967295u, 86488u), 183f), vec3<i32>(1i, 1i, 14713i), Struct_1(vec2<u32>(0u, 1u), 1024f)), Struct_2(Struct_1(vec2<u32>(16585u, 35720u), 1000f), true, Struct_1(vec2<u32>(14618u, 8385u), -345f), vec3<i32>(0i, -1i, 30637i), Struct_1(vec2<u32>(10511u, 36213u), -264f)), Struct_2(Struct_1(vec2<u32>(93374u, 5077u), -722f), true, Struct_1(vec2<u32>(23375u, 1u), 188f), vec3<i32>(10347i, -73641i, 0i), Struct_1(vec2<u32>(4294967295u, 0u), -893f)), Struct_2(Struct_1(vec2<u32>(0u, 22254u), 2062f), true, Struct_1(vec2<u32>(0u, 0u), 1000f), vec3<i32>(-7129i, 23615i, 21214i), Struct_1(vec2<u32>(4487u, 0u), -1215f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 5302u), -681f), true, Struct_1(vec2<u32>(79519u, 39491u), -573f), vec3<i32>(10728i, 0i, 34527i), Struct_1(vec2<u32>(24560u, 36084u), -645f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 91140u), 738f), true, Struct_1(vec2<u32>(15359u, 0u), -1000f), vec3<i32>(34844i, -59506i, i32(-2147483648)), Struct_1(vec2<u32>(36974u, 1u), 1344f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), -383f), true, Struct_1(vec2<u32>(1u, 18339u), -1350f), vec3<i32>(1168i, 2147483647i, 0i), Struct_1(vec2<u32>(37863u, 692u), 1616f)), Struct_2(Struct_1(vec2<u32>(41721u, 44741u), -1299f), true, Struct_1(vec2<u32>(1u, 1u), -539f), vec3<i32>(-1i, 4734i, -59455i), Struct_1(vec2<u32>(40996u, 1u), 529f)), Struct_2(Struct_1(vec2<u32>(72735u, 74515u), -616f), false, Struct_1(vec2<u32>(54170u, 0u), -414f), vec3<i32>(-30270i, 0i, 14459i), Struct_1(vec2<u32>(1u, 1u), -738f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 49457u), 1883f), true, Struct_1(vec2<u32>(1u, 0u), 724f), vec3<i32>(-13851i, 2147483647i, 7809i), Struct_1(vec2<u32>(1u, 1u), 343f)));

var<private> global2: array<u32, 11> = array<u32, 11>(36277u, 1u, 11117u, 75747u, 0u, 1u, 0u, 2248u, 4294967295u, 0u, 58756u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = global0.e;
    let var_1 = vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-5534i, 0i, 2147483647i, -54091i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, -5824i, -1i), vec4<i32>(global0.d.x, global0.d.x, u_input.a.x, u_input.a.x))), 1i), global0.d.x);
    global2 = array<u32, 11>();
    let var_2 = !select(!(!vec2<bool>(arg_0, global0.b)), select(!vec2<bool>(false, global0.b), vec2<bool>(var_0.a.x <= 48241u, arg_0), false), vec2<bool>(-712f <= global0.c.b, !arg_0));
    global1 = array<Struct_2, 11>();
    return vec2<bool>(any(!vec4<bool>(false, all(vec3<bool>(false, var_2.x, true)), any(vec3<bool>(false, true, arg_0)), var_2.x)), all(vec4<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(arg_0, false, var_2.x, global0.b)), false, var_2.x)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<bool> {
    global2 = array<u32, 11>();
    let var_0 = Struct_3(_wgslsmith_div_f32(arg_2.e.b, 889f), vec2<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.a.x, arg_2.e.a.x, arg_1.x, 4294967295u), vec4<u32>(arg_2.c.a.x, arg_2.a.a.x, 1u, arg_1.x))), 11u)], 1127u), ~max(arg_1.x, 51784u)), arg_2.a.a.x);
    global2 = array<u32, 11>();
    let var_1 = Struct_2(global0.a, false, global0.e, ~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -20018i, -arg_2.d.x), global0.d), global0.e);
    var var_2 = u_input.a.x << (~4294967295u % 32u);
    return select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.b, global0.e.b)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.b, -838f)), global0.b), select(!select(func_3(false), !vec2<bool>(true, arg_2.b), !vec2<bool>(var_1.b, global0.b)), select(!(!vec2<bool>(var_1.b, false)), vec2<bool>(true, true), false), global0.b), vec2<bool>(!(!all(vec4<bool>(false, global0.b, var_1.b, true))), all(select(!vec4<bool>(true, global0.b, arg_0, true), !vec4<bool>(var_1.b, arg_0, arg_2.b, global0.b), global0.a.b == -412f))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<bool>(arg_0, false, all(!select(select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(arg_0, arg_2, true, false), arg_0), vec4<bool>(true, arg_0, false, true), func_2(true, global0.e.a, Struct_2(Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.e.a.x, 11u)], 11u)], 11u)], global0.e.a.x), global0.a.b), arg_2, global0.e, vec3<i32>(-24334i, arg_1, -30034i), global0.a)).x)));
    return Struct_1(global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.b))));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_2, 11>();
    global2 = array<u32, 11>();
    var var_0 = ~_wgslsmith_div_u32(4294967295u, 4294967295u);
    var var_1 = !all(!vec2<bool>(!global0.b, -571f > global0.c.b));
    let var_2 = ~firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.d.x, 38227i, global0.d.x, global0.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -21296i, -2147483647i, -1i), vec4<i32>(1046i, u_input.a.x, u_input.b.x, u_input.b.x))), ~(-vec4<i32>(u_input.a.x, global0.d.x, -2147483647i, 1i))));
    return func_4(all(select(vec2<bool>(select(global0.b, true, false), false && global0.b), func_2(!global0.b, vec2<u32>(1u, global0.a.a.x), Struct_2(Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3848u, 11u)], 11u)], 11u)], 4294967295u), global0.e.b), true, global0.e, global0.d, Struct_1(vec2<u32>(1u, global0.c.a.x), global0.e.b))), select(!vec2<bool>(global0.b, false), !vec2<bool>(global0.b, global0.b), select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, global0.b), true)))), _wgslsmith_sub_i32(global0.d.x, i32(-1i) * -_wgslsmith_dot_vec3_i32(global0.d, vec3<i32>(12660i, global0.d.x, -12727i))), false, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1768f, 1428f, -1499f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.b, 176f, 1950f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-200f, global0.c.b, -1790f), vec3<f32>(global0.a.b, -161f, global0.e.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.e.b, global0.a.b, global0.c.b), vec3<f32>(2053f, -412f, global0.a.b))) + vec3<f32>(1000f, global0.e.b, global0.c.b)), !select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(false, global0.b, global0.b), vec3<bool>(global0.b, global0.b, global0.b))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(global0.a.a.x, 11u)];
    let var_1 = select(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.yxz, select(vec3<u32>(global0.c.a.x, 54399u, arg_3.a.x), vec3<u32>(76107u, global0.c.a.x, arg_2.a.x), vec3<bool>(global0.b, global0.b, true)), vec3<u32>(4294967295u, var_0.c.a.x, global0.e.a.x)), ~(~vec3<u32>(global2[_wgslsmith_index_u32(arg_0.a.a.x, 11u)], var_0.e.a.x, global2[_wgslsmith_index_u32(22057u, 11u)]))), _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(64798u, 32300u, 3184u, 4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(17153u, global2[_wgslsmith_index_u32(1u, 11u)], 85106u, arg_2.a.x), firstTrailingBit(arg_1))), ~arg_2.a.x), arg_1.yzy, true);
    var var_2 = ~(~arg_1);
    global1 = array<Struct_2, 11>();
    global2 = array<u32, 11>();
    return !func_2(select(var_0.b, all(select(vec2<bool>(true, global0.b), vec2<bool>(true, arg_0.b), arg_0.b)), true), vec2<u32>(~_wgslsmith_sub_u32(var_2.x, 0u), 12704u), Struct_2(func_1(), var_0.b, arg_3, ~(-vec3<i32>(u_input.a.x, u_input.b.x, 27705i)), func_4(true, max(global0.d.x, var_0.d.x), var_0.b, vec3<f32>(155f, 595f, var_0.e.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(global0.e.b));
    var var_1 = global0.d;
    var var_2 = global1[_wgslsmith_index_u32(1u, 11u)];
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(global0.a.a.x), 11u)];
    var var_4 = select(vec2<bool>(select(all(vec4<bool>(true, var_3.b, global0.b, global0.b)), any(vec3<bool>(var_2.b, false, var_2.b)), global0.a.b == var_3.a.b) & var_3.b, var_3.b), !(!func_5(global1[_wgslsmith_index_u32(~0u, 11u)], abs(vec4<u32>(55900u, 64385u, 0u, global0.e.a.x)), func_1(), global0.a)), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, 0i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.b, -2608f, -796f) + vec3<f32>(var_3.a.b, var_3.a.b, var_2.c.b)))))), _wgslsmith_mod_i32(min(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_2.d.x, var_1.x), 0i), u_input.b.x | reverseBits(u_input.a.x)), -(~2147483647i)), var_0);
}

