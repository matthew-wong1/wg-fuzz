struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(4294967295u, 35640u, 4294967295u), vec3<u32>(0u, 18879u, 5708u), vec3<u32>(4294967295u, 23524u, 4854u), vec3<u32>(47031u, 1u, 4294967295u), vec3<u32>(14442u, 4294967295u, 622u), vec3<u32>(1u, 20574u, 0u), vec3<u32>(0u, 1u, 73468u), vec3<u32>(1u, 51532u, 1u), vec3<u32>(6488u, 9761u, 11163u), vec3<u32>(62891u, 12111u, 0u), vec3<u32>(48961u, 1u, 46207u), vec3<u32>(1u, 23113u, 99168u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(64284u, 0u, 34964u), vec3<u32>(11252u, 4294967295u, 11978u), vec3<u32>(12528u, 4294967295u, 1u), vec3<u32>(4294967295u, 41274u, 1u), vec3<u32>(1u, 28225u, 4294967295u), vec3<u32>(33759u, 68081u, 7895u), vec3<u32>(0u, 4294967295u, 57710u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(17926u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(45651u, 4294967295u, 21327u), vec3<u32>(0u, 0u, 52991u), vec3<u32>(1u, 1u, 1u), vec3<u32>(5101u, 92867u, 4294967295u), vec3<u32>(69166u, 0u, 23514u), vec3<u32>(51841u, 4294967295u, 0u), vec3<u32>(74895u, 1u, 4294967295u));

var<private> global1: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-1333f, -2403f, -957f, -191f), vec4<f32>(-560f, 1559f, 175f, -2099f), vec4<f32>(559f, 678f, 1181f, 585f));

var<private> global2: vec4<u32> = vec4<u32>(29322u, 99614u, 0u, 52574u);

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(4294967295u, 4294967295u, vec3<u32>(39654u, 0u, 4294967295u), vec4<u32>(17721u, 0u, 114047u, 1u), 38288i), Struct_1(61896u, 0u, vec3<u32>(44645u, 0u, 37366u), vec4<u32>(1u, 20710u, 15269u, 549u), 0i));

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_div_u32(global2.x, _wgslsmith_div_u32(global2.x, abs(_wgslsmith_dot_vec2_u32(global2.yz, global2.zz)))), 19509u, ~select(countOneBits(abs(global0[_wgslsmith_index_u32(7495u, 30u)])), vec3<u32>(~16898u, 31195u, 0u), !any(vec3<bool>(arg_1, false, arg_0))), vec4<u32>((global2.x & _wgslsmith_dot_vec2_u32(global2.wx, vec2<u32>(global2.x, 24088u))) ^ global2.x, 0u, 19294u, reverseBits(~1u)), _wgslsmith_clamp_i32(~u_input.a.x, 1i, firstLeadingBit(u_input.a.x)));
    global3 = array<Struct_1, 2>();
    global4 = array<Struct_1, 24>();
    global2 = var_0.d;
    var var_1 = vec2<bool>(true, var_0.e >= _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~u_input.a.x, var_0.e), ~(-1i) & (var_0.e ^ var_0.e), 1i));
    return global1[_wgslsmith_index_u32(var_0.d.x, 3u)];
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(true, arg_1));
    var var_1 = global4[_wgslsmith_index_u32(~1u, 24u)];
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = ~(~_wgslsmith_mod_i32(var_1.e, -39946i));
    var var_4 = _wgslsmith_sub_vec3_u32(var_1.d.yyy, abs(firstLeadingBit(max(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(arg_0.x, 30u)], vec3<u32>(78149u, 0u, global2.x)), vec3<u32>(global2.x, 4490u, 1u) << (arg_0.wxx % vec3<u32>(32u))))));
    return _wgslsmith_mod_vec4_u32(~firstLeadingBit(arg_0), vec4<u32>(var_1.a, var_4.x, max(~0u, var_4.x) << (abs(_wgslsmith_sub_u32(arg_2.x, var_1.a)) % 32u), arg_0.x));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec4<f32>, 3>();
    let var_0 = ~(~countOneBits(vec3<u32>(1u, firstTrailingBit(arg_2.x), 4294967295u)));
    let var_1 = abs(var_0.yy >> (var_0.zx % vec2<u32>(32u)));
    var var_2 = arg_3.b;
    let var_3 = Struct_1(97899u, _wgslsmith_dot_vec4_u32(arg_3.d, vec4<u32>(firstTrailingBit(51905u), ~global2.x, var_1.x, _wgslsmith_clamp_u32(arg_2.x, arg_3.b & var_1.x, 1u))), global0[_wgslsmith_index_u32(4294967295u, 30u)], _wgslsmith_div_vec4_u32(~func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, arg_3.d.x), vec4<u32>(4294967295u, 1367u, 38417u, 12846u)), any(vec2<bool>(arg_1, arg_1)), arg_3.d.xw | arg_2.xz, _wgslsmith_sub_i32(arg_3.e, arg_0)), vec4<u32>(_wgslsmith_dot_vec4_u32(~arg_3.d, firstTrailingBit(vec4<u32>(67510u, var_1.x, 18770u, 4294967295u))), arg_3.a, ~_wgslsmith_dot_vec4_u32(arg_3.d, arg_3.d), max(_wgslsmith_div_u32(global2.x, 1u), arg_2.x))), _wgslsmith_sub_i32(max(arg_3.e, u_input.a.x), 2249i));
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> u32 {
    let var_0 = -18086i;
    var var_1 = global4[_wgslsmith_index_u32(~4294967295u, 24u)];
    global1 = array<vec4<f32>, 3>();
    global1 = array<vec4<f32>, 3>();
    global1 = array<vec4<f32>, 3>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.yxx ^ _wgslsmith_add_vec3_u32(firstLeadingBit(global2.ywz), global0[_wgslsmith_index_u32(~firstTrailingBit(min(global2.x, 4294967295u)), 30u)]);
    var var_1 = global4[_wgslsmith_index_u32(2300u, 24u)];
    var_1 = global4[_wgslsmith_index_u32(func_4(func_1(firstLeadingBit(~1i), false, min(vec3<u32>(1u, var_1.a, var_1.a) & vec3<u32>(19705u, 4294967295u, 11479u), _wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(global2.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)])), global3[_wgslsmith_index_u32(global2.x, 2u)]), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, var_1.d.x), vec2<u32>(4294967295u, 0u)), var_1.c.x, var_0.x, var_0.x), var_1.e) ^ global2.x, 24u)];
    let var_2 = var_0.x;
    let var_3 = -12065i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-262f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)) + 1000f)), _wgslsmith_mult_vec4_i32(reverseBits(~firstLeadingBit(vec4<i32>(0i, var_3, 2147483647i, var_3))), vec4<i32>(~u_input.a.x, var_1.e, -1i, reverseBits(0i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), true != (var_0.x > var_1.a))).x)), func_2(var_1.d, false, global2.wx, func_1(1i, true, ~_wgslsmith_mod_vec3_u32(global2.xwx, vec3<u32>(26580u, 4294967295u, var_0.x)), func_1(1i, true, max(vec3<u32>(4294967295u, var_1.a, 4294967295u), global0[_wgslsmith_index_u32(global2.x, 30u)]), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_0.x), 24u)])).e).x, select(vec2<i32>(abs(_wgslsmith_sub_i32(var_3, 1i)), 1i), _wgslsmith_sub_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.e, 1i), min(u_input.a, vec2<i32>(-1i, u_input.a.x)))), true));
}

