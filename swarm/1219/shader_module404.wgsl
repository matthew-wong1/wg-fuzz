struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1618f, 238f, 2131f);

var<private> global1: array<f32, 11> = array<f32, 11>(1623f, -637f, -227f, 192f, 449f, 1263f, 374f, 677f, -540f, 1382f, -2450f);

var<private> global2: vec2<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(min(firstTrailingBit(55017u), ~0u)), ~(~28454u), 4294967295u, _wgslsmith_sub_u32(abs(u_input.a), 0u)), vec4<u32>(firstTrailingBit(~u_input.b), _wgslsmith_div_u32(~global2.x, abs(u_input.a)), 1u, _wgslsmith_mod_u32(~u_input.b, 35324u)) | _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(59629u, 1u, u_input.a, 4294967295u), vec4<u32>(global2.x, u_input.a, 18618u, global2.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global2.x, u_input.a, 15011u), vec4<u32>(9715u, global2.x, 62239u, global2.x))), vec4<u32>(_wgslsmith_mult_u32(global2.x, 1u), ~global2.x, global2.x >> (global2.x % 32u), _wgslsmith_add_u32(u_input.b, 4294967295u))));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(~arg_0.x, -(~arg_0.x), i32(-1i) * -25063i), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(23024i, arg_0.x, -38588i), vec3<i32>(-14069i, arg_0.x, 0i), true), _wgslsmith_mod_vec3_i32(vec3<i32>(5554i, -2147483647i, -2147483647i), vec3<i32>(2147483647i, arg_0.x, arg_0.x))), _wgslsmith_div_vec3_i32(~vec3<i32>(arg_0.x, 56787i, arg_0.x), vec3<i32>(arg_0.x, 1i, arg_0.x))) >> (~var_0.zxy % vec3<u32>(32u)));
    global1 = array<f32, 11>();
    let var_2 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(var_1.x), 1168i, ~(~arg_0.x), var_1.x), ~max(-vec4<i32>(var_1.x, -1i, 2147483647i, 10692i), vec4<i32>(1101i, arg_0.x, -58440i, arg_0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x + global1[_wgslsmith_index_u32(var_0.x, 11u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 11u)]), global0.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1260f, global0.x, global1[_wgslsmith_index_u32(u_input.a, 11u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(904f, global1[_wgslsmith_index_u32(u_input.b, 11u)], -475f))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 877f, -1942f) * vec3<f32>(-1509f, global1[_wgslsmith_index_u32(global2.x, 11u)], global1[_wgslsmith_index_u32(var_0.x, 11u)]))) - vec3<f32>(global0.x, global1[_wgslsmith_index_u32(45643u, 11u)], global0.x)))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(floor(arg_0.d.zxw));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.d.yyx + arg_0.d.wyz)));
    let var_0 = Struct_2(countOneBits(_wgslsmith_add_i32(abs(2147483647i), -max(-1i, arg_0.c))), abs(arg_0.c), !select(arg_2, select(select(vec3<bool>(arg_2.x, arg_1, true), vec3<bool>(false, arg_2.x, arg_2.x), arg_2.x), select(arg_2, arg_2, arg_2), arg_2), select(vec3<bool>(false, false, arg_2.x), arg_2, arg_2)), -arg_0.c);
    global2 = arg_0.b.zy;
    global2 = ~select(vec2<u32>(global2.x, 0u), ~(vec2<u32>(1u, 4294967295u) | select(vec2<u32>(0u, 69457u), arg_0.b.wy, arg_2.x)), vec2<bool>(all(select(var_0.c, arg_2, var_0.c)), false));
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~global2.x), 67168u), 11u)], -750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.a.x, 11u)] - -928f)))));
}

fn func_2(arg_0: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(~vec2<u32>(4294967295u, 1u), _wgslsmith_div_vec4_u32(func_3(vec2<i32>(1i, 0i)), ~vec4<u32>(u_input.b, 4294967295u, 1u, global2.x)), -arg_0.b.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 11u)], 825f, global1[_wgslsmith_index_u32(global2.x, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]))), arg_0.a.x, arg_0.b.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-432f, -1050f, 2152f, 1277f) * vec4<f32>(global0.x, 829f, global1[_wgslsmith_index_u32(global2.x, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]))))))));
    global2 = vec2<u32>(abs(~(~(~global2.x))), global2.x);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -795f), -1000f);
    global1 = array<f32, 11>();
    global2 = max(max(reverseBits(vec2<u32>(u_input.a, u_input.b) & vec2<u32>(55287u, u_input.b)) >> (firstTrailingBit(vec2<u32>(0u, global2.x)) % vec2<u32>(32u)), ~func_3(-vec2<i32>(-2147483647i, 0i)).wx), vec2<u32>(global2.x, _wgslsmith_clamp_u32(~(~global2.x), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, 144073u), vec2<u32>(4294967295u, 39615u)))));
    return _wgslsmith_f_op_vec4_f32(var_0 + var_0);
}

fn func_5(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_2(~_wgslsmith_mult_i32(1i, 1i) << (~(~global2.x) % 32u), 1i, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), false, true), true), 1i);
    global1 = array<f32, 11>();
    global2 = ~(~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, 45537u), vec2<u32>(u_input.a, global2.x))) & _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(16594u, 27536u), vec2<u32>(0u, global2.x)), abs(vec2<u32>(global2.x, global2.x))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))), arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x)));
    var var_1 = arg_0.zx;
    return Struct_3(!select(!(!var_0.c.zy), select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(true, true), true), vec2<bool>(true, true)), Struct_2(firstTrailingBit(-(~11896i)), ~(var_0.d >> (global2.x % 32u)), select(vec3<bool>(var_0.c.x, var_0.c.x | false, true), var_0.c, vec3<bool>(any(vec2<bool>(var_0.c.x, var_0.c.x)), true, true && var_0.c.x)), _wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_0.d, 21625i, var_0.d), vec4<i32>(var_0.a, -2147483647i, -15528i, -58918i)), ~vec4<i32>(44384i, 23690i, 20796i, var_0.a), select(vec4<bool>(var_0.c.x, true, false, var_0.c.x), vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x))), firstTrailingBit(~vec4<i32>(-45946i, var_0.b, var_0.a, var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2167f + _wgslsmith_f_op_f32(arg_0.x + -486f)) + var_1.x)), 1084f);
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = 0i;
    var_0 = i32(-1i) * -2147483647i;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(402f, 341f, 1223f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, global1[_wgslsmith_index_u32(global2.x, 11u)], 168f)))))));
    global2 = vec2<u32>(u_input.a, _wgslsmith_mult_u32(~4294967295u, u_input.b)) << (reverseBits(vec2<u32>(~global2.x >> (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 1664u, global2.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 28916u, 4294967295u), vec3<u32>(67435u, u_input.b, global2.x))))) % vec2<u32>(32u));
    var_0 = arg_0;
    return func_5(vec4<f32>(-1333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2327f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), arg_1.c)).b;
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec3<f32> {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(func_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global1[_wgslsmith_index_u32(u_input.a, 11u)], arg_0.x, arg_2.x), vec4<f32>(global0.x, global1[_wgslsmith_index_u32(1u, 11u)], 463f, arg_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1780f, 828f, -616f))))))).xy);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -257f)));
    let var_3 = Struct_3(select(arg_1.c.zz, select(select(!vec2<bool>(var_0, arg_1.c.x), !arg_1.c.xx, true), !func_5(vec4<f32>(-494f, 2351f, var_1.x, global1[_wgslsmith_index_u32(u_input.a, 11u)])).b.c.xz, true), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(354f, global0.x, 1509f, global1[_wgslsmith_index_u32(1u, 11u)]) + vec4<f32>(arg_0.x, 315f, 1585f, var_2)))).b.c.x), func_5(vec4<f32>(arg_0.x, -365f, _wgslsmith_f_op_f32(-532f - _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -1502f)))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 879f);
    var var_4 = _wgslsmith_add_i32(-26262i << (0u % 32u), 0i) == (var_3.b.a >> (u_input.b % 32u));
    return arg_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(332f, global1[_wgslsmith_index_u32(global2.x >> (global2.x % 32u), 11u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 11u)]) * global0.x)) + vec3<f32>(-1008f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global2.x, 11u)], -966f)), 1f)) - _wgslsmith_f_op_vec3_f32(func_7(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, -1153f) * _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(60919u, 11u)], 1000f, global0.x), vec3<f32>(global0.x, global1[_wgslsmith_index_u32(29350u, 11u)], global0.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-376f, global1[_wgslsmith_index_u32(4294967295u, 11u)], global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_0.x, 11u)], global0.x, global1[_wgslsmith_index_u32(68049u, 11u)]) - vec3<f32>(global0.x, global1[_wgslsmith_index_u32(1u, 11u)], global0.x)), true))), func_6(46816i, func_5(_wgslsmith_f_op_vec4_f32(func_2(Struct_3(arg_1, Struct_2(-18598i, 2757i, vec3<bool>(true, arg_1.x, arg_1.x), 8371i), global0.x, -976f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1346f, -1178f), global0.yy, arg_2)) + _wgslsmith_f_op_vec2_f32(round(global0.yx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.yz)) + _wgslsmith_f_op_vec2_f32(-global0.yz))), arg_1)));
    global0 = _wgslsmith_f_op_vec4_f32(func_2(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, -1505f, 1304f)) - vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, -420f, global1[_wgslsmith_index_u32(arg_0.x, 11u)]))))).wxx;
    global2 = ~select(_wgslsmith_add_vec2_u32(arg_0.yz, min(_wgslsmith_div_vec2_u32(arg_0.yy, vec2<u32>(global2.x, 4294967295u)), _wgslsmith_div_vec2_u32(arg_0.xy, vec2<u32>(8198u, global2.x)))), _wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 14063u), ~vec2<u32>(15805u, global2.x)) >> (~reverseBits(vec2<u32>(72726u, 22937u)) % vec2<u32>(32u)), !arg_1);
    let var_0 = 2164f;
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, 1i, 1i)), min(vec3<i32>(2147483647i, 1i, -36134i << (1u % 32u)), abs(~vec3<i32>(-30628i, 22858i, -3241i)))), abs(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -29520i, -2147483647i)) << (arg_0 % vec3<u32>(32u)));
    return abs(max(u_input.b, 129645u));
}

fn func_8(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_4 {
    global2 = countOneBits(firstTrailingBit(countOneBits(vec2<u32>(global2.x, global2.x))) & _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, global2.x)), vec2<u32>(global2.x, u_input.b), vec2<u32>(1u, 32840u))) ^ _wgslsmith_sub_vec2_u32(abs(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4654u), vec2<u32>(global2.x, 46660u))), select(vec2<u32>(~915u, 3296u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.b, global2.x)), !arg_1.c.xx));
    var var_0 = ~_wgslsmith_div_u32(~u_input.b, ~global2.x);
    var var_1 = Struct_3(func_6(2147483647i, func_5(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 651f, global1[_wgslsmith_index_u32(global2.x, 11u)]), _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(43302u, 11u)], -508f, global1[_wgslsmith_index_u32(u_input.a, 11u)]), vec4<f32>(-496f, global0.x, global1[_wgslsmith_index_u32(4294967295u, 11u)], -2349f))))).c.xy, func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 11u)], global1[_wgslsmith_index_u32(0u, 11u)], 650f, global0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)], global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2255f, global1[_wgslsmith_index_u32(global2.x, 11u)], -238f, 213f)))).b, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1192f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(63022u, 11u)]), func_5(vec4<f32>(-1328f, -1000f, global1[_wgslsmith_index_u32(global2.x, 11u)], global0.x)).d, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(92874u, u_input.a), 11u)]) + vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.x, 49334u), vec3<u32>(8244u, 26002u, 0u)), 11u)], _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global2.x, 11u)])), global1[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_f_op_f32(global0.x + -547f)))).c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(0u, u_input.b, 3293u, global2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, global2.x, 65904u, 0u), abs(vec4<u32>(global2.x, u_input.b, 0u, 48402u)))), _wgslsmith_div_vec4_u32(~func_3(arg_2), vec4<u32>(global2.x, global2.x, u_input.b, 4294967295u) & firstTrailingBit(vec4<u32>(27647u, global2.x, global2.x, 6686u)))), 11u)]);
    let var_2 = vec3<u32>(abs(reverseBits(~firstLeadingBit(global2.x))), min(27577u, _wgslsmith_mult_u32(~global2.x, ~(~global2.x))), reverseBits(~func_1(vec3<u32>(1u, 4294967295u, 26200u), var_1.a, arg_1.c.x)) >> (~_wgslsmith_div_u32(max(global2.x, global2.x), ~3118u) % 32u));
    global0 = vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(reverseBits(firstTrailingBit(0u))), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), ~0u)), 11u)], -1572f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1424u, 11u)], var_1.c)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))), false)));
    return Struct_4(func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(49242u, 11u)] - global0.x) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 11u)])), _wgslsmith_div_f32(-2525f, 1000f), global0.x, _wgslsmith_f_op_f32(-1000f + global0.x))), func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 144f, var_1.c) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], 198f, -1354f, -1151f)) - _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec2<u32>(var_2.x, 0u), vec4<u32>(var_2.x, var_2.x, 4294967295u, global2.x), arg_2.x, vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 11u)], global0.x, -1000f, var_1.d)), arg_1.c.x, arg_1.c))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -424f, -241f, -881f) * vec4<f32>(-533f, 536f, global1[_wgslsmith_index_u32(var_2.x, 11u)], 227f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 11>();
    var var_0 = func_8(vec3<bool>(~countOneBits(0u) >= func_1(firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, u_input.b)), vec2<bool>(false, false), true), true, any(vec3<bool>(true, true, true))), Struct_2(select(-2415i, _wgslsmith_add_i32(-54304i, ~842i), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))), ~(func_5(vec4<f32>(global0.x, 1515f, -1297f, global0.x)).b.b << (select(global2.x, 1445u, true) % 32u)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), -(~func_6(-2147483647i, Struct_3(vec2<bool>(true, true), Struct_2(-34639i, 37125i, vec3<bool>(false, true, true), 29196i), global1[_wgslsmith_index_u32(32574u, 11u)], 2876f)).d)), -(-(~vec2<i32>(30259i, 20650i)) & vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-13750i, 19116i), vec2<i32>(2147483647i, -23343i)), -2147483647i)));
    var var_1 = vec3<bool>(var_0.a.b.c.x, _wgslsmith_div_u32(~(~global2.x), global2.x) != global2.x, var_0.b.a.x && func_6(min(_wgslsmith_mod_i32(13028i, var_0.b.b.a), var_0.b.b.d), Struct_3(!var_0.b.b.c.yy, func_6(-14274i, Struct_3(vec2<bool>(true, var_0.a.b.c.x), var_0.a.b, global0.x, global0.x)), 629f, 462f)).c.x);
    let var_2 = var_0.a.a.x;
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, global1[_wgslsmith_index_u32(1u, 11u)], global0.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.d, 1000f, -355f), vec3<f32>(global1[_wgslsmith_index_u32(global2.x, 11u)], global0.x, -153f)))) + _wgslsmith_f_op_vec4_f32(func_2(var_0.b)).wzz), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, 629f, 1333f)))))))), all(vec3<bool>(true & var_0.a.a.x, var_0.b.b.c.x, all(!vec4<bool>(var_1.x, false, var_1.x, var_0.a.b.c.x))))));
    global2 = _wgslsmith_div_vec2_u32(vec2<u32>(func_3(~vec2<i32>(0i, var_0.a.b.d)).x, ~_wgslsmith_clamp_u32(global2.x, global2.x, global2.x)), reverseBits(abs(~vec2<u32>(global2.x, u_input.b)))) | vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(~global2.x), ~_wgslsmith_add_u32(u_input.a, global2.x)), countOneBits(~(~global2.x)));
    global2 = ~(~reverseBits(~vec2<u32>(global2.x, u_input.b))) & (~(select(vec2<u32>(48243u, 1u), vec2<u32>(u_input.b, 0u), var_0.b.b.c.xz) & _wgslsmith_mult_vec2_u32(vec2<u32>(32184u, 1u), vec2<u32>(4294967295u, global2.x))) >> (~select(~vec2<u32>(4294967295u, global2.x), vec2<u32>(global2.x, 20271u), any(var_0.a.b.c)) % vec2<u32>(32u)));
    let var_3 = var_0.a.a.x && var_0.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_add_u32(1u, max(u_input.b, ~14893u)), _wgslsmith_f_op_f32(-var_0.a.d));
}

