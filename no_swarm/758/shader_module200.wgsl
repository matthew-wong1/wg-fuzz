struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -621f;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(false, true, 51355u, false);

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_3, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> vec3<f32> {
    return vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -617f))), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(f32(-1f) * -888f)));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(abs(0u), reverseBits(global2.c), arg_0.c, 1u)), vec4<u32>(arg_0.c, ~9812u, 51514u, _wgslsmith_mult_u32(~49333u ^ reverseBits(global2.c), 17978u)));
    var var_1 = Struct_1(true, arg_1, arg_0.c, false);
    return vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.b.a)), -547f, -1274f);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_5 {
    var var_0 = global2.c;
    let var_1 = 2147483647i;
    var var_2 = global2.c <= global2.c;
    let var_3 = abs(vec2<u32>(4294967295u, global2.c));
    let var_4 = vec2<i32>(max(_wgslsmith_add_i32(-37510i, max(var_1 & 1282i, -23095i)), -1i), u_input.a);
    return Struct_5(Struct_4(global4[_wgslsmith_index_u32(~(~global2.c) | var_3.x, 8u)]), true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_2) -> Struct_4 {
    var var_0 = vec4<bool>(true, true, firstTrailingBit(-2147483647i) != 8361i, false);
    let var_1 = firstTrailingBit(arg_1.a.a.a.x);
    global1 = _wgslsmith_div_u32(var_1, ~abs(countOneBits(30007u)));
    global1 = 1u;
    global4 = array<Struct_3, 8>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global4[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(1u, firstLeadingBit(global2.c)), 1u), 8u)], func_3(vec3<i32>(firstTrailingBit(-1882i), -u_input.a, ~u_input.a) >> (~reverseBits(vec3<u32>(global2.c, global2.c, 26070u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(global3.x, global3.x, -207f, global3.x), 1615i, vec2<u32>(21781u, 77439u), global3.wx))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec3<u32>(18727u, global2.c, 0u), Struct_2(1393f), 4294967295u, vec2<i32>(u_input.b, u_input.a)), true)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(467f, global3.x, global3.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 918f, 830f))))), Struct_2(global3.x));
    global1 = ~(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(12856u, 1u, var_0.a.c), select(var_0.a.a, vec3<u32>(4294967295u, 1u, global2.c), true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2262f))));
    var var_2 = Struct_1(!(_wgslsmith_f_op_f32(-810f + _wgslsmith_f_op_f32(-1864f + global3.x)) <= var_0.a.b.a), global2.b, ~((firstTrailingBit(global2.c) & _wgslsmith_div_u32(0u, global2.c)) | var_0.a.c), true);
    global0 = _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(exp2(global3.x))), 602f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(582f, global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(var_0.a.b.a, 249f, var_0.a.b.a, 488f), -7588i, var_0.a.a.zy, vec2<f32>(1088f, -1761f))).x + _wgslsmith_f_op_f32(f32(-1f) * -112f))))), 1i, _wgslsmith_div_vec2_u32(countOneBits(var_0.a.a.zy), func_3(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-9725i, u_input.b, -1i), -vec3<i32>(var_0.a.d.x, u_input.a, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(56696i, -62359i, 32003i), vec3<i32>(u_input.a, -1i, 51354i))), _wgslsmith_f_op_vec3_f32(global3.yzx + _wgslsmith_f_op_vec3_f32(-global3.xyx)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.a, var_0.a.b.a, 1000f) * global3.yyz)))).a.a.a.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global3.yw, _wgslsmith_f_op_vec2_f32(global3.yx - global3.yw)), vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(global3.x, 1007f))))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(-1856f, var_0.a.d.x, vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-944f - 944f))), 617f));
}

