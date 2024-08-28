struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(2147483647i, vec4<i32>(-53522i, 2147483647i, -1i, 1i), 66226i, vec2<i32>(1i, 2147483647i)), Struct_1(i32(-2147483648), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 0i), -13599i, vec2<i32>(2147483647i, -5140i)), Struct_1(0i, vec4<i32>(2147483647i, i32(-2147483648), 1i, 1i), 1i, vec2<i32>(18132i, -7900i)), Struct_1(2147483647i, vec4<i32>(-43509i, -26697i, 2147483647i, 2147483647i), 2147483647i, vec2<i32>(-14258i, -1i)), Struct_1(0i, vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 0i), 1i, vec2<i32>(1i, 2147483647i)), Struct_1(2147483647i, vec4<i32>(27454i, -12261i, -20631i, 118i), 0i, vec2<i32>(33132i, 3485i)), Struct_1(0i, vec4<i32>(-10321i, 21201i, 59232i, -16161i), 34206i, vec2<i32>(408i, 0i)), Struct_1(1i, vec4<i32>(3442i, -7765i, -1i, -1i), -93951i, vec2<i32>(-16350i, 26436i)));

var<private> global1: vec2<f32>;

var<private> global2: bool = false;

var<private> global3: bool;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> i32 {
    global3 = all(arg_3.zx);
    var var_0 = countOneBits(_wgslsmith_clamp_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(21749u, u_input.d.x), vec2<u32>(6194u, arg_1.x))), _wgslsmith_add_vec2_u32(arg_2.zz, vec2<u32>(64276u >> (arg_2.x % 32u), arg_2.x & arg_2.x)), reverseBits(vec2<u32>(_wgslsmith_sub_u32(4294967295u, 124926u), ~arg_1.x))));
    var var_1 = ~(~max(select(arg_2.wy, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, u_input.a.x), u_input.a), vec2<bool>(arg_3.x, false)), ~max(u_input.a, arg_2.zw)));
    var var_2 = global0[_wgslsmith_index_u32(~1u, 8u)];
    let var_3 = Struct_1(~(-2147483647i), -arg_0.b << ((arg_1 >> (_wgslsmith_add_vec4_u32(arg_2, ~vec4<u32>(arg_1.x, 0u, var_0.x, arg_1.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_i32(arg_0.a, var_2.c), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b.x, _wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(var_2.a, 40572i, -2147483647i, 89491i))), max(vec2<i32>(arg_0.a, -25364i), vec2<i32>(arg_0.b.x, var_2.b.x) >> (vec2<u32>(arg_1.x, 52920u) % vec2<u32>(32u))), select(-vec2<i32>(var_2.d.x, 0i), vec2<i32>(var_2.d.x, arg_0.a), select(arg_3.xy, vec2<bool>(arg_3.x, false), vec2<bool>(arg_3.x, arg_3.x)))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(~firstTrailingBit(abs(u_input.c)), 0i, var_2.d.x), -firstTrailingBit(_wgslsmith_clamp_vec3_i32(~var_2.b.xyz, arg_0.b.zzw, _wgslsmith_mult_vec3_i32(arg_0.b.yyz, vec3<i32>(14244i, var_2.a, arg_0.c)))));
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(global4.yy * vec2<f32>(_wgslsmith_f_op_f32(-1690f + -528f), 1441f));
    global3 = true;
    let var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 8u)];
    let var_1 = firstLeadingBit(vec3<i32>(u_input.b, var_0.c, func_3(global0[_wgslsmith_index_u32(5940u << (u_input.d.x % 32u), 8u)], ~vec4<u32>(u_input.d.x, u_input.a.x, 69884u, u_input.a.x), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 7123u), vec4<u32>(u_input.a.x, u_input.d.x, 57353u, u_input.a.x)), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.d.x), vec4<u32>(1u, u_input.d.x, 1u, u_input.a.x), vec4<bool>(false, false, true, true)), ~vec4<u32>(21116u, 0u, u_input.a.x, 4294967295u)), vec3<bool>(false, true, all(vec2<bool>(false, false))))));
    let var_2 = _wgslsmith_add_u32(reverseBits(25646u), _wgslsmith_mod_u32(_wgslsmith_div_u32(firstLeadingBit(~u_input.d.x), u_input.a.x), _wgslsmith_dot_vec2_u32(abs(u_input.a), reverseBits(u_input.a) & vec2<u32>(1u, 1u))));
    return Struct_1(-select(~var_0.a, u_input.b, false), vec4<i32>(firstLeadingBit(~var_0.d.x), _wgslsmith_sub_i32(-1i, -2147483647i), var_1.x, abs(var_0.c)) << (~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.d.x, 1u, 91653u), vec4<u32>(81097u, u_input.d.x, 0u, var_2))) % vec4<u32>(32u)), 1i, vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 1i, var_0.d.x, 47669i), var_0.b), 38878i), 1i));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = arg_0;
    return func_2();
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 8>();
    let var_0 = Struct_1(arg_1.b.x, arg_1.b, u_input.b & _wgslsmith_add_i32(max(i32(-1i) * -5588i, arg_2.d.x), i32(-1i) * -793i), arg_1.b.xx);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(-global1.x)));
    var var_2 = vec3<u32>(u_input.d.x | _wgslsmith_mult_u32(u_input.d.x, _wgslsmith_div_u32(u_input.d.x, ~u_input.d.x)), ~(~u_input.a.x), u_input.d.x);
    var var_3 = countOneBits(_wgslsmith_clamp_i32(~u_input.b, 1i, min(~(~arg_1.d.x), max(_wgslsmith_mod_i32(arg_1.a, -2101i), _wgslsmith_mult_i32(arg_2.b.x, 0i)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec2<bool>(func_4(true, func_1(Struct_1(-39702i, vec4<i32>(u_input.c, -2147483647i, u_input.b, 3954i), 9365i, vec2<i32>(-23395i, u_input.b)), 1158f, u_input.a, global4.x), func_1(global0[_wgslsmith_index_u32(36713u, 8u)], 565f, u_input.a, -1151f)), all(vec2<bool>(false, false)) | true));
    var var_1 = func_2();
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.d, ~u_input.d), ~(~u_input.a.x)), vec3<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, 50288u), u_input.a), 4294967295u, ~firstTrailingBit(0u)));
    let var_3 = firstTrailingBit(var_1.b.yx);
    global3 = false | all(!(!(!vec2<bool>(var_0, var_0))));
    var var_4 = min(~(-23985i), i32(-1i) * -(func_2().a ^ (1i << (var_2.x % 32u))));
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zx, _wgslsmith_mod_u32(~var_2.x | 4294967295u, 0u & u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.www))), ~u_input.c);
}

