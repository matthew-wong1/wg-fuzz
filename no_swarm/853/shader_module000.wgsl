struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<i32> = vec3<i32>(-1963i, -26164i, 2147483647i);

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(i32(-2147483648), 25065i), Struct_1(1i, 0i), Struct_1(-19247i, 14026i), Struct_1(-78687i, -28885i), Struct_1(-17952i, 0i), Struct_1(28309i, -34682i), Struct_1(8735i, 21804i), Struct_1(-16804i, 20835i), Struct_1(2147483647i, 55904i), Struct_1(-1043i, 1i));

var<private> global3: vec2<f32> = vec2<f32>(671f, -108f);

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    let var_0 = vec2<bool>(global0.x, any(select(vec3<bool>(select(global0.x, global0.x, false), any(vec2<bool>(true, global0.x)), !global0.x), select(select(vec3<bool>(true, false, true), vec3<bool>(global0.x, global0.x, arg_1), vec3<bool>(global0.x, arg_1, global0.x)), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, global0.x, arg_1), true), !arg_1), false)));
    let var_1 = !vec2<bool>(true, abs(u_input.a) < 4294967295u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-339f, global3.x)));
    var var_3 = !select(select(select(select(vec3<bool>(var_0.x, global0.x, false), vec3<bool>(false, var_1.x, true), false), vec3<bool>(true, arg_1, global0.x), !arg_1), vec3<bool>(true, true, any(var_1)), 1i > (26760i >> (u_input.b % 32u))), vec3<bool>(global3.x >= _wgslsmith_f_op_f32(f32(-1f) * -817f), true, var_0.x), vec3<bool>(all(!vec3<bool>(global0.x, false, true)), var_1.x, all(!vec2<bool>(arg_1, var_0.x))));
    global2 = array<Struct_1, 10>();
    return select(-40645i, 23104i, any(vec4<bool>(true, any(select(vec2<bool>(true, global0.x), vec2<bool>(true, arg_1), true)), false, !(true & global0.x))));
}

fn func_2(arg_0: i32) -> i32 {
    global2 = array<Struct_1, 10>();
    global1 = _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(global1.x, -global1.x), arg_0, -2507i)), vec3<i32>(-func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_0, 2147483647i, global1.x), vec4<i32>(global1.x, 53700i, -13984i, global1.x)), global0.x & global0.x), _wgslsmith_mult_i32(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(1i, arg_0, arg_0, arg_0), vec4<i32>(18187i, arg_0, 0i, global1.x)), true), arg_0), global1.x));
    let var_0 = Struct_2(any(!select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, true)), vec3<bool>(global0.x, true, global0.x), true)));
    var var_1 = Struct_3(global4[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.a, reverseBits(49723u))) & 0u, 28u)]);
    let var_2 = countOneBits(abs(vec3<i32>(func_3(vec4<i32>(-75383i, var_1.a.a, -56596i, global1.x), false), -arg_0, _wgslsmith_dot_vec2_i32(global1.yz, vec2<i32>(arg_0, 1i))) & vec3<i32>(~arg_0, -21350i ^ var_1.a.b, -12730i)));
    return -2147483647i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_vec2_u32(reverseBits(u_input.c.yw), countOneBits(u_input.c.xw));
    let var_1 = Struct_5(~min(0i, global1.x), _wgslsmith_div_u32(33863u, ~abs(_wgslsmith_mod_u32(u_input.c.x, var_0.x))), Struct_2(false), -5087i);
    global2 = array<Struct_1, 10>();
    let var_2 = _wgslsmith_div_u32(firstTrailingBit(~(~(~4294967295u))), var_0.x);
    global0 = vec3<bool>(!global0.x, true, var_1.c.a);
    return global4[_wgslsmith_index_u32(u_input.b, 28u)];
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(firstTrailingBit(vec3<i32>(func_2(-10036i), -2147483647i, _wgslsmith_mod_i32(global1.x, -23658i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -1359f), -1851f) - vec3<f32>(1f, _wgslsmith_f_op_f32(1000f + global3.x), _wgslsmith_f_op_f32(trunc(-1301f))))));
    var var_1 = global3.x;
    var var_2 = ~(~46660u);
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(global1.xx, vec2<i32>(-8544i, 1i)), func_3(vec4<i32>(var_0.b, global1.x, -2147483647i, 1i), global0.x), -24525i, var_0.a | var_0.a), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(44750i, 17046i, var_0.a, -48961i), abs(vec4<i32>(1i, 0i, 0i, -97409i)))));
    global4 = array<Struct_1, 28>();
    return Struct_3(Struct_1(global1.x, _wgslsmith_add_i32(min(_wgslsmith_dot_vec2_i32(global1.zz, vec2<i32>(-1i, 31259i)), max(1i, var_0.b)), var_3)));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<u32> {
    global3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1469f), 1291f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(global3.x * 219f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -214f), vec2<f32>(-1000f, 573f), vec2<bool>(true, global0.x))))))));
    global2 = array<Struct_1, 10>();
    global1 = _wgslsmith_mod_vec3_i32(-select(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_3.a.a, 2147483647i), vec3<i32>(0i, 0i, global1.x)), arg_2.zwy, select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, global0.x))) >> (u_input.c.wwz % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-(~arg_2.ywz), max(vec3<i32>(19494i, arg_2.x, arg_1), vec3<i32>(-12635i, arg_2.x, 1i)) ^ ~vec3<i32>(arg_3.a.b, -18619i, 6571i), vec3<i32>(func_1().a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 21886i, arg_0, arg_2.x), vec4<i32>(global1.x, -1i, -78i, arg_1)), arg_2.x)), countOneBits(arg_2.xxx), arg_2.yyz));
    let var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(46908u, u_input.a >> (_wgslsmith_clamp_u32(35581u, u_input.c.x, 4294967295u) % 32u), 1u, ~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), ~(~u_input.c));
    var var_1 = arg_3;
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(select(0u, ~var_0.x << (16669u % 32u), true), _wgslsmith_mult_u32(27459u, ~var_0.x << (31262u % 32u))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, ~u_input.c.x), ~_wgslsmith_mult_u32(99527u, 0u)), 34396u), u_input.c.zw);
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> f32 {
    var var_0 = 1u;
    var var_1 = Struct_5(countOneBits(0i), 68421u, Struct_2(select(!global0.x, true, global0.x)), min(max(select(1i, max(2147483647i, global1.x), any(global0.yx)), func_3(~vec4<i32>(0i, 1i, arg_1, arg_2.a.b), global0.x != true)), arg_1));
    return _wgslsmith_f_op_f32(f32(-1f) * -177f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 10>();
    let var_0 = Struct_2(all(vec3<bool>(_wgslsmith_div_i32(global1.x, 78525i) < (global1.x >> (u_input.a % 32u)), !(!global0.x), true)));
    global1 = -vec3<i32>(0i, 16028i, -1i);
    var var_1 = Struct_1(global1.x, global1.x);
    var var_2 = _wgslsmith_f_op_f32(func_6(_wgslsmith_dot_vec2_u32(~func_5(var_1.b, _wgslsmith_div_i32(23738i, 30132i), -vec4<i32>(global1.x, var_1.a, 26422i, var_1.a), func_1()), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c.x, u_input.c.x)), ~u_input.c.zx) >> (u_input.c.xz % vec2<u32>(32u))), abs(-_wgslsmith_sub_i32(~global1.x, func_3(vec4<i32>(var_1.a, global1.x, global1.x, 0i), var_0.a))), func_1()));
    var var_3 = func_1().a;
    let var_4 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1564f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(10349u, var_1.a, func_1())) - _wgslsmith_f_op_f32(global3.x + global3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, global3.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - vec2<f32>(-1000f, global3.x)))), vec2<f32>(463f, _wgslsmith_f_op_f32(global3.x + global3.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)), vec2<f32>(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(abs(-950f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_4.x)), vec3<u32>((abs(u_input.c.x) << (1u % 32u)) | reverseBits(2908u), u_input.b, u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -353f));
}

