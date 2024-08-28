struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(14377u, 3159u, 4294967295u, 1u), vec4<u32>(20673u, 12799u, 6141u, 68806u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(1u, 4294967295u, 1u, 55120u), vec4<u32>(1813u, 4294967295u, 4294967295u, 43057u), vec4<u32>(4294967295u, 9980u, 76897u, 15230u));

var<private> global1: array<u32, 22>;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(arg_1.xz, ~vec2<u32>(arg_1.x, 39586u), global2.a.a.a.xx), arg_1.xw & vec2<u32>(_wgslsmith_dot_vec4_u32(arg_1, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 6u)]), 4294967295u)), vec2<u32>(4294967295u, arg_1.x));
    global1 = array<u32, 22>();
    global2 = Struct_3(global2.a, any(!global2.a.b.a.yy), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(584f - global2.c) - _wgslsmith_f_op_f32(-845f * 328f))))));
    return any(!(!global2.a.b.a.wy)) || !(!global2.a.a.a.x);
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = Struct_3(global2.a, !(!global2.b), _wgslsmith_f_op_f32(1067f * _wgslsmith_f_op_f32(sign(-1504f))));
    var var_1 = var_0.a;
    var var_2 = !(!(11851u > abs(arg_0.x)));
    var var_3 = _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(~u_input.a, abs(u_input.a), vec2<i32>(54981i, u_input.a.x)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-796f - 589f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(907f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(128f, global2.c)), _wgslsmith_f_op_f32(-global2.c), any(vec3<bool>(var_1.a.a.x, var_1.a.a.x, true)))), 152f, _wgslsmith_f_op_f32(max(1036f, var_0.c))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + -633f)), _wgslsmith_f_op_f32(max(global2.c, _wgslsmith_f_op_f32(trunc(-1015f)))), var_0.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.c)), 1521f)), -1000f, _wgslsmith_f_op_f32(max(1417f, _wgslsmith_f_op_f32(round(1000f)))))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = global2.b;
    var var_1 = Struct_4(arg_1.x, _wgslsmith_f_op_f32(arg_2.x * arg_2.x), ~(~(~vec2<u32>(1u, global1[_wgslsmith_index_u32(97220u, 22u)]))) | ~abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 22u)], 22u)], 22u)]) ^ vec2<u32>(global1[_wgslsmith_index_u32(9559u, 22u)], 4294967295u)), global2.a, global2.a.a.a.zz);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), ~var_1.c, Struct_2(Struct_1(!select(vec4<bool>(true, global2.b, global2.a.a.a.x, true), global2.a.a.a, var_1.d.a.a.x)), var_1.d.b), select(select(!select(vec2<bool>(false, arg_0), global2.a.a.a.xz, var_1.e), select(var_1.e, vec2<bool>(true, true), global2.a.b.a.x), !(!arg_0)), vec2<bool>((global1[_wgslsmith_index_u32(4294967295u, 22u)] > var_1.c.x) || true, all(var_1.d.b.a.zzw) != true), vec2<bool>(global2.a.b.a.x | arg_0, !(!var_1.e.x))));
    let var_3 = var_2;
    var var_4 = min(_wgslsmith_mult_vec2_i32(~u_input.a, u_input.a), (_wgslsmith_div_vec2_i32(u_input.a, -vec2<i32>(9515i, u_input.a.x)) ^ -countOneBits(vec2<i32>(-47161i, 1i))) << (~(~min(vec2<u32>(var_2.c.x, 14816u), vec2<u32>(0u, 0u))) % vec2<u32>(32u)));
    return var_1.d.b;
}

fn func_1() -> bool {
    let var_0 = false;
    var var_1 = global2.a;
    let var_2 = Struct_3(Struct_2(func_4(all(vec3<bool>(var_1.a.a.x, global2.a.a.a.x, var_1.b.a.x)) | func_2(4294967295u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35613u, 22u)], 6u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, 1261f, global2.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-876f, -764f, global2.c), vec3<f32>(1140f, 1843f, -913f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(796f, 1591f, global2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.c)) + _wgslsmith_f_op_f32(step(-142f, -2194f)))), func_4((global2.a.b.a.x || false) | var_1.a.a.x, vec3<f32>(852f, -839f, global2.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, -164f, global2.c) - vec3<f32>(792f, global2.c, global2.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, global2.c, -3304f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c - global2.c)))), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + 2410f) + global2.c)));
    let var_3 = Struct_3(var_2.a, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1227f))));
    var var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.b, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, u_input.a.x, -30814i), vec4<i32>(0i, 1i, -1i, 16408i)))), u_input.a.x, countOneBits(_wgslsmith_clamp_i32(-65825i, u_input.a.x, u_input.b))), max(~(~vec3<i32>(1i, u_input.a.x, 120i) & countOneBits(vec3<i32>(u_input.a.x, -2952i, 0i))), vec3<i32>(u_input.a.x, u_input.b, select(_wgslsmith_add_i32(2147483647i, u_input.a.x), max(u_input.a.x, -9298i), global2.b || var_3.a.b.a.x))));
    return var_2.a.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(Struct_2(global2.a.a, Struct_1(vec4<bool>(func_1(), global2.a.b.a.x, global2.b, func_1()))), !(!global2.a.a.a.x) | true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + -1356f))), global2.c)));
    global2 = Struct_3(global2.a, true, global2.c);
    var var_0 = all(func_4(global2.a.b.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, -564f, 173f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1130f, global2.c, -1490f), vec3<f32>(global2.c, 1161f, global2.c)))), global2.c).a);
    let var_1 = !global2.b;
    global0 = array<vec4<u32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(~reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 24376u, 1u))), _wgslsmith_sub_vec3_u32(~(vec3<u32>(24071u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13700u, 22u)], 22u)], 13575u) | vec3<u32>(27724u, 72311u, 1u)), ~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(2348u, 22u)], 50098u) >> (~vec3<u32>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)], 22u)]) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-583f + -806f), _wgslsmith_div_f32(global2.c, _wgslsmith_div_f32(2020f, global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * global2.c) - global2.c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, global2.c, -1326f) + vec3<f32>(global2.c, global2.c, global2.c)) * vec3<f32>(1737f, global2.c, 163f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.c))), 408f, global2.c))), 4294967295u);
}

