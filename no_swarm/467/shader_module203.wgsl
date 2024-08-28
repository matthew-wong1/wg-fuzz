struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 9>;

var<private> global2: bool = true;

var<private> global3: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(1021f, -569f), vec2<f32>(540f, 2051f), vec2<f32>(2037f, -749f), vec2<f32>(-123f, 416f), vec2<f32>(-1286f, 187f), vec2<f32>(-519f, 1424f), vec2<f32>(255f, -522f), vec2<f32>(-663f, 1474f), vec2<f32>(-779f, -691f), vec2<f32>(-140f, -304f), vec2<f32>(-522f, -119f), vec2<f32>(943f, 549f), vec2<f32>(236f, -1007f), vec2<f32>(-781f, -144f), vec2<f32>(1000f, -1028f), vec2<f32>(843f, -145f), vec2<f32>(-1872f, 325f), vec2<f32>(177f, 1489f), vec2<f32>(-297f, -1188f), vec2<f32>(1039f, -828f));

var<private> global4: bool;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> i32 {
    global1 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(max(-1962f, _wgslsmith_f_op_f32(249f * -719f)))))));
    var var_1 = ~(~global0.c);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b.c, ~var_2.b.c, 82765u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 4294967295u) >> (vec2<u32>(global0.c, u_input.e) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(var_2.b.c, u_input.e)), ~vec2<u32>(4294967295u, u_input.e)), _wgslsmith_add_vec2_u32(vec2<u32>(global0.c, 67292u), select(vec2<u32>(0u, arg_1.c), vec2<u32>(u_input.e, arg_1.c), true)))), abs(vec4<u32>(16040u, abs(~66580u), 46846u, arg_0.b.c)));
    return countOneBits(arg_0.c);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    global4 = true;
    var var_0 = _wgslsmith_add_i32(func_3(global1[_wgslsmith_index_u32(515u, 9u)], arg_2, 2147483647i), ~(-2147483647i));
    global4 = select(false, all(!select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))), any(select(vec3<bool>(true, 79594u != arg_0.b.c, -37710i >= u_input.a), vec3<bool>(true, true, true), false)));
    global4 = false;
    let var_1 = Struct_2(countOneBits(arg_0.a), arg_2, _wgslsmith_add_i32(_wgslsmith_mult_i32(global0.b.x, global0.a), i32(-1i) * -(arg_2.a << (57248u % 32u))));
    return max(firstLeadingBit(~max(arg_1.x, ~arg_2.c)), 13u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    global3 = array<vec2<f32>, 20>();
    let var_0 = -global0.d.zy;
    var var_1 = Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(2147483647i, global0.b.x, arg_1.b.x, 0i)), ~vec4<i32>(arg_1.b.x, global0.a, var_0.x, -18929i)), ~vec4<i32>(arg_1.b.x, -754i ^ global0.a, i32(-1i) * -3179i, arg_1.b.x)), Struct_1(-14512i, abs(u_input.b), 1u, ~global0.d), _wgslsmith_div_i32(abs(~(i32(-1i) * -41482i)), global0.d.x));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~firstLeadingBit(var_1.b.c >> (arg_0 % 32u))), global0.c), 9u)];
    var var_3 = Struct_2(var_2.a, var_1.b, -u_input.b.x);
    return global1[_wgslsmith_index_u32(arg_1.c, 9u)];
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_sub_vec4_i32(-(vec4<i32>(global0.b.x, u_input.c, -19639i, u_input.b.x) << (vec4<u32>(4294967295u, global0.c, 29804u, u_input.e) % vec4<u32>(32u))) >> (vec4<u32>(global0.c, countOneBits(u_input.e), ~4294967295u, ~global0.c) % vec4<u32>(32u)), vec4<i32>(~u_input.c, -2147483647i, -global0.b.x, global0.b.x)), Struct_1(1i, ~min(global0.d.yx, global0.b & global0.b), min(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.c, u_input.e, 12109u), vec3<u32>(global0.c, 4294967295u, u_input.e)), abs(vec3<u32>(47243u, 4294967295u, 0u))), u_input.e), ~(~vec3<i32>(0i, global0.d.x, u_input.a))), global0.b.x);
    global3 = array<vec2<f32>, 20>();
    let var_1 = func_4(~abs(abs(26165u) & func_2(Struct_2(vec4<i32>(-1i, 2147483647i, global0.a, -30210i), Struct_1(-2147483647i, vec2<i32>(u_input.b.x, global0.d.x), 3374u, var_0.a.zxx), 1i), vec3<u32>(global0.c, u_input.e, 53396u), var_0.b, global3[_wgslsmith_index_u32(global0.c, 20u)])), Struct_1(58547i, -var_0.a.zz & -(var_0.a.xy << (vec2<u32>(global0.c, var_0.b.c) % vec2<u32>(32u))), 4294967295u, global0.d), !select(vec3<bool>(all(vec3<bool>(false, false, false)), true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), true));
    var var_2 = countOneBits(select(vec2<i32>(~0i, -13794i), global0.b, select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, false)))) << (select(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.c, 0u), vec2<u32>(global0.c, 54020u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.c, 0u), vec2<u32>(25880u, global0.c)) ^ firstLeadingBit(vec2<u32>(4294967295u, global0.c)), vec2<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, true)))) % vec2<u32>(32u)));
    var var_3 = -876f;
    return var_0.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = ~(~vec2<u32>(firstTrailingBit(arg_1.c), u_input.e));
    let var_1 = 564f;
    global0 = Struct_1(u_input.c, vec2<i32>(u_input.d, min(global0.b.x, abs(-39919i))), 0u, ~(-vec3<i32>(arg_3.d.x, arg_0.x, global0.b.x) >> (arg_2 % vec3<u32>(32u))));
    var_0 = select(vec2<u32>(var_0.x, global0.c), vec2<u32>(arg_2.x, 4294967295u), vec2<bool>(true, any(vec4<bool>(select(true, true, true), all(vec2<bool>(true, false)), true, true))));
    let var_2 = Struct_1(global0.a, u_input.b, 91668u, vec3<i32>(0i, firstTrailingBit(reverseBits(1i)), _wgslsmith_sub_i32(arg_0.x, 0i)) | vec3<i32>(_wgslsmith_mult_i32(countOneBits(-717i), u_input.a), ~(-9074i), global0.b.x));
    return ~reverseBits(-abs(vec2<i32>(global0.d.x, var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 20>();
    var var_0 = Struct_1(-2147483647i, u_input.b ^ func_5(vec3<i32>(countOneBits(1i), reverseBits(1i), _wgslsmith_div_i32(global0.b.x, 0i)), func_1(), ~firstLeadingBit(vec3<u32>(global0.c, u_input.e, 23411u)), func_4(1u, Struct_1(global0.b.x, vec2<i32>(global0.b.x, 1i), global0.c, vec3<i32>(-2147483647i, -25159i, global0.d.x)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))).b), global0.c & func_1().c, global0.d);
    global0 = Struct_1(-(i32(-1i) * -1i), abs(vec2<i32>(~(~global0.b.x), -33027i)), var_0.c, _wgslsmith_add_vec3_i32(global0.d, max(-reverseBits(var_0.d), global0.d)));
    var var_1 = _wgslsmith_add_i32(~min(var_0.a, u_input.b.x) << (~func_1().c % 32u), ~(i32(-1i) * -1i) >> (var_0.c % 32u)) ^ _wgslsmith_sub_i32(-_wgslsmith_div_i32(4407i, ~global0.a), u_input.c);
    var var_2 = -vec4<i32>(u_input.b.x, global0.a, ~(~global0.a), -func_5(var_0.d, Struct_1(global0.a, vec2<i32>(var_0.d.x, -2147483647i), 0u, var_0.d), ~vec3<u32>(69283u, u_input.e, u_input.e), func_1()).x);
    let var_3 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(var_0.c, u_input.e & func_1().c), u_input.d, countOneBits(vec2<i32>(global0.a & var_2.x, -global0.b.x) >> (~min(vec2<u32>(u_input.e, 1u), vec2<u32>(u_input.e, 35259u)) % vec2<u32>(32u))), vec4<u32>(~(u_input.e >> (min(var_0.c, global0.c) % 32u)), global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 85628u, u_input.e), abs(vec4<u32>(global0.c, global0.c, 5199u, u_input.e))) << (select(~19001u, reverseBits(27930u), any(vec2<bool>(false, false))) % 32u), u_input.e), u_input.e);
}

