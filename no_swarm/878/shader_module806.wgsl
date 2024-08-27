struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, false, true, true, false, false, true, true, true, true, false, true);

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 14>;

var<private> global3: Struct_3;

var<private> global4: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = 1i;
    var var_1 = countOneBits(arg_1);
    global1 = Struct_2(arg_3.d ^ ~abs(_wgslsmith_mod_vec3_u32(global1.a, global1.d)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-312f, -792f, arg_0.x))))), _wgslsmith_f_op_f32(197f - _wgslsmith_f_op_f32(select(arg_3.b.x, _wgslsmith_f_op_f32(exp2(global1.b.x)), any(vec3<bool>(false, true, global3.b)))))), global4.c, abs(global4.a));
    var var_2 = min(countOneBits(vec4<i32>(_wgslsmith_div_i32(-2147483647i, -34448i & arg_3.c.x), _wgslsmith_mult_i32(global1.c.x, 18840i), ~(-21654i), _wgslsmith_div_i32(-52485i, 2147483647i) | (0i << (arg_1 % 32u)))), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.x ^ u_input.b, -firstTrailingBit(global4.c.x), 0i, 74659i), vec4<i32>(u_input.b & global1.c.x, ~_wgslsmith_add_i32(-27620i, -20198i), -84234i, 16072i)));
    global1 = Struct_2(vec3<u32>(u_input.c, _wgslsmith_add_u32(~0u, ~(~u_input.c)), 29936u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -327f), _wgslsmith_f_op_vec2_f32(trunc(global1.b))))) * vec2<f32>(global4.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.e.x), _wgslsmith_div_f32(368f, -239f)))), arg_3.c, _wgslsmith_sub_vec3_u32(~global4.d, _wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(43659u, global4.a.x, 4294967295u)), select(vec3<u32>(1u, 7931u, arg_1), vec3<u32>(global1.d.x, 4294967295u, global4.a.x), arg_2.x))));
    return 25527u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> i32 {
    global2 = array<Struct_3, 14>();
    let var_0 = max(vec2<i32>(_wgslsmith_div_i32(max(arg_2.c.x, u_input.a), arg_2.c.x << (global1.a.x % 32u)), ~_wgslsmith_clamp_i32(global4.c.x, -14823i, -7572i)) ^ vec2<i32>(firstTrailingBit(global1.c.x), -1i), vec2<i32>(28786i ^ global4.c.x, -3550i));
    let var_1 = ~(~16257u);
    return 12822i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(true, global3.c.b, ~(-72472i | _wgslsmith_sub_i32(-global4.c.x, i32(-1i) * -38176i)), _wgslsmith_clamp_vec2_i32(max(global3.c.d, global3.c.d), _wgslsmith_div_vec2_i32(global3.c.d, firstTrailingBit(~global1.c.zy)), -((vec2<i32>(-1i, u_input.a) >> (global1.d.zy % vec2<u32>(32u))) ^ -vec2<i32>(1i, global4.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3.c.e.x - _wgslsmith_f_op_f32(ceil(731f))), 170f)));
    let var_1 = vec2<bool>(true, _wgslsmith_dot_vec4_i32((global1.c >> (vec4<u32>(global4.d.x, arg_0.x, 4294967295u, 0u) % vec4<u32>(32u))) & global4.c, global1.c) != _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(43487i, 0i), global3.c.d), ~global3.c.d), global1.c.x));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(4294967295u, 41914u), 0u, ~(~(~u_input.c))), 14u)];
    let var_3 = countOneBits(func_4(!all(vec3<bool>(arg_1.x, false, true)), func_3(vec3<bool>(var_0.a, true, arg_1.x), u_input.c, vec2<bool>(false, arg_1.x), Struct_2(vec3<u32>(9701u, u_input.c, 0u), vec2<f32>(666f, global4.b.x), vec4<i32>(u_input.a, global1.c.x, var_2.c.c, -35357i), vec3<u32>(u_input.c, global4.a.x, 0u))), Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(265f, -1042f) + vec2<f32>(var_0.e.x, var_2.c.e.x)), firstTrailingBit(vec4<i32>(1i, 2147483647i, var_2.c.c, 13520i)), min(vec3<u32>(u_input.c, u_input.c, 0u), global1.d)), global3.c.c)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~global4.d.x, firstLeadingBit(arg_0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(arg_0.x, 0u), 8531u, firstLeadingBit(8297u)), ~vec3<u32>(arg_0.x, 0u, arg_0.x))) % 32u);
    let var_4 = (reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -1i, 1i), _wgslsmith_mult_vec3_i32(global1.c.wwz, vec3<i32>(global4.c.x, u_input.a, -2147483647i)))) | ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2904i, -2147483647i), global4.c.zwy), global4.c.wwy)) & vec3<i32>(((8280i | u_input.b) << ((45652u ^ u_input.c) % 32u)) >> (~_wgslsmith_mod_u32(global4.a.x, 4294967295u) % 32u), var_3, -var_0.c);
    return Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 33744u, 4294967295u), global1.d), 4294967295u), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 19485u), vec3<u32>(33570u, u_input.c, arg_0.x), vec3<u32>(19496u, 0u, 16418u)) | ~global1.d), max(max(firstTrailingBit(vec3<u32>(arg_0.x, global4.d.x, 4294967295u)), arg_0), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 17488u, global4.d.x), vec3<u32>(0u, 28863u, global1.a.x), arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_2.c.e + _wgslsmith_div_vec2_f32(global3.c.e, global3.c.e))))), ~_wgslsmith_clamp_vec4_i32(countOneBits(~vec4<i32>(-21686i, 40950i, -2147483647i, var_2.c.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(15473i, -2147483647i, 2147483647i, var_3), global1.c), reverseBits(global4.c) & max(global1.c, global1.c)), global4.d);
}

fn func_1() -> vec4<f32> {
    global1 = func_2(global1.d, global3.c.b);
    var var_0 = vec3<bool>(false || all(select(global3.a, vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(41217u, 12u)], true), true)), global3.a.x, global0[_wgslsmith_index_u32(~(~u_input.c), 12u)]);
    let var_1 = true;
    let var_2 = Struct_3(!vec3<bool>(global3.b, all(select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, var_1, true), vec3<bool>(var_0.x, true, true))), true), global3.b, global3.c);
    var var_3 = Struct_1(!all(!global3.c.b), var_2.a.yy, -2147483647i, _wgslsmith_mod_vec2_i32(abs(_wgslsmith_add_vec2_i32(var_2.c.d, vec2<i32>(u_input.b, global1.c.x))), vec2<i32>(-min(-1i, global4.c.x), abs(global3.c.d.x >> (4294967295u % 32u)))), var_2.c.e);
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1171f, -713f, -131f, 1777f)));
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_3 {
    global1 = func_2(max(vec3<u32>(arg_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, global1.a.x, global1.a.x, arg_0), vec4<u32>(global1.d.x, global4.a.x, 57624u, arg_0)), ~(global1.a.x & 103766u)), countOneBits(_wgslsmith_div_vec3_u32(global4.a, global1.a))), global3.c.b);
    var var_0 = global3.c;
    var var_1 = Struct_1(global3.b && !((1u | arg_0) > 1u), select(select(!vec2<bool>(true, global3.a.x), select(var_0.b, vec2<bool>(false, global0[_wgslsmith_index_u32(39364u, 12u)]), !var_0.b.x), global3.c.b), select(!select(vec2<bool>(true, true), vec2<bool>(true, global3.a.x), vec2<bool>(false, global0[_wgslsmith_index_u32(global1.a.x, 12u)])), !vec2<bool>(global3.c.a, global3.c.a), any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(30963u, 12u)], true), vec4<bool>(false, false, true, var_0.a), false))), !all(global3.a)), var_0.d.x, vec2<i32>(-1i, func_4(false, _wgslsmith_div_u32(global1.a.x >> (u_input.c % 32u), 4294967295u), func_2(global4.d, select(global3.c.b, var_0.b, false)), ~(-3343i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(arg_2.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, global1.b.x)), global3.a.zz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-920f, 2172f) - var_0.e), global1.b))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-728f + 1000f))), -1000f)));
    let var_2 = vec4<bool>(true, global0[_wgslsmith_index_u32(87047u, 12u)], !global0[_wgslsmith_index_u32(u_input.c, 12u)], (u_input.c <= 1219u) || (abs(func_3(vec3<bool>(var_0.b.x, false, true), 0u, vec2<bool>(var_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_2(global1.d, var_0.e, global4.c, global1.a))) >= 1u));
    let var_3 = 472f;
    return Struct_3(vec3<bool>(true, !(true == !var_1.a), true), any(vec2<bool>(global4.d.x != func_2(vec3<u32>(39717u, 4294967295u, 4294967295u), vec2<bool>(var_1.b.x, global0[_wgslsmith_index_u32(1u, 12u)])).a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, var_1.c, arg_1.x), vec4<i32>(global1.c.x, u_input.a, global4.c.x, global4.c.x)) > var_0.d.x)), Struct_1(all(vec4<bool>(false, global1.b.x != -296f, var_1.a, var_1.c >= -26321i)), select(select(!var_1.b, vec2<bool>(var_0.b.x, global3.b), any(vec2<bool>(var_0.a, var_1.a))), vec2<bool>(any(global3.a), select(false, var_2.x, false)), true), -1i ^ ((-22618i >> (arg_0 % 32u)) >> (global1.a.x % 32u)), select(vec2<i32>(firstLeadingBit(u_input.a), reverseBits(u_input.a)), vec2<i32>(1i, 1i), arg_2.x > arg_2.x), var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(0u, min(~_wgslsmith_mult_vec2_i32(reverseBits(global1.c.yz), _wgslsmith_div_vec2_i32(global4.c.yw, vec2<i32>(global3.c.d.x, 2147483647i))), ~select(vec2<i32>(global3.c.d.x, global4.c.x), vec2<i32>(u_input.a, global3.c.c), !global3.c.b.x)), _wgslsmith_f_op_vec4_f32(func_1()));
    let var_1 = Struct_3(global3.a, true, func_5((_wgslsmith_sub_u32(u_input.c, 10488u) | ~1u) >> (u_input.c % 32u), vec2<i32>(abs(abs(global4.c.x)), firstTrailingBit(u_input.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, 828f, -2358f, 121f)), vec4<f32>(568f, var_0.c.e.x, var_0.c.e.x, -361f)))))).c);
    global4 = Struct_2(global4.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f))), global1.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.d.x, select(-14937i, _wgslsmith_dot_vec2_i32(vec2<i32>(7684i, var_0.c.d.x), vec2<i32>(var_1.c.d.x, global3.c.c)), all(vec3<bool>(true, true, false))), func_5(global4.a.x, abs(vec2<i32>(-1i, global1.c.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1233f, 1115f, 433f, var_1.c.e.x)))).c.d.x, var_0.c.d.x ^ global3.c.d.x), -select(vec4<i32>(2147483647i, -11194i, -1i, 2147483647i), -vec4<i32>(1i, 40934i, -2147483647i, global4.c.x), !vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(global4.d.x, 12u)]))), _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(global1.d.x, 22201u), max(max(80016u, global1.d.x), 1u), ~global4.a.x), ~(~vec3<u32>(0u, global4.a.x, 38125u))));
    var var_2 = Struct_2(~(global4.a | vec3<u32>(~36692u, _wgslsmith_clamp_u32(global4.a.x, 23360u, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 25054u, u_input.c), vec4<u32>(65505u, 4294967295u, global1.d.x, 11812u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.e - vec2<f32>(-1254f, _wgslsmith_f_op_f32(1083f - 1553f)))), vec4<i32>(var_1.c.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-51955i, -2147483647i, -72108i, global4.c.x), vec4<i32>(-36901i, -34105i, global4.c.x, var_1.c.d.x)), firstTrailingBit(-1i), _wgslsmith_add_i32(u_input.a, u_input.a)), global4.c.yxz), -_wgslsmith_mod_i32(-5943i, global3.c.c), min(i32(-1i) * -14651i, abs(-var_1.c.c))), global1.d);
    global1 = func_2(vec3<u32>(1u, 0u, min(var_2.a.x | 41970u, global4.d.x)), !var_0.c.b);
    var var_3 = var_1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1())))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1805f, global3.c.e.x, -634f, var_2.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.e.x, 1248f, -761f, 541f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_2.b.x, 1000f, var_0.c.e.x), vec4<f32>(var_1.c.e.x, -219f, 868f, 393f)), vec4<f32>(var_2.b.x, var_1.c.e.x, -1655f, -507f)))))), -1163f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(389f, var_1.c.e.x, global3.c.e.x, global4.b.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(global3.c.e.x, -1000f, var_2.b.x, 222f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.e.x, -1175f, -662f, 895f), vec4<f32>(-321f, global4.b.x, var_0.c.e.x, global1.b.x))))))), -var_1.c.d);
}

