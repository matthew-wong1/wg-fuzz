struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 4294967295u);

var<private> global1: array<i32, 5>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(0u, 52750u, 71704u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    var var_0 = -610f;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f + arg_0)))))));
    global2 = Struct_1(vec3<u32>(28324u, global2.a.x, _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(~0u, ~1u))));
    let var_2 = select(vec2<bool>(true, true), select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true), !any(vec4<bool>(true, var_1.b > var_1.a.x, all(vec4<bool>(false, true, true, false)), true)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(411f + arg_0) - 450f);
    return u_input.b.xx;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(vec4<i32>(global1[_wgslsmith_index_u32(global2.a.x, 5u)], 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, -2147483647i), u_input.b), 1i) & (-min(vec4<i32>(0i, u_input.a, -2147483647i, u_input.b.x), vec4<i32>(1i, global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global0.x, 5u)], global1[_wgslsmith_index_u32(u_input.e, 5u)])) >> (vec4<u32>(~u_input.e, 49438u, firstTrailingBit(50846u), ~51190u) % vec4<u32>(32u))));
    let var_1 = Struct_3(-vec4<i32>(u_input.c, u_input.b.x, 0i, firstLeadingBit(-11087i)));
    let var_2 = Struct_2(vec2<f32>(-1070f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -945f));
    var var_3 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1932f) + _wgslsmith_div_f32(var_2.a.x, 2127f)), _wgslsmith_f_op_f32(exp2(var_2.b)), true)) + -888f));
    let var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(40391u, 0u, 1u, 45113u)) | (~vec4<u32>(0u, 1u, 10566u, u_input.e) | (vec4<u32>(121407u, 1u, global0.x, global2.a.x) ^ vec4<u32>(8189u, global0.x, 57901u, u_input.e))), vec4<u32>(6993u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8537u), global0.yy), global2.a.x, global0.x) & vec4<u32>(34554u, _wgslsmith_mult_u32(21813u, global2.a.x), global2.a.x, ~global2.a.x)), ~reverseBits(u_input.e));
    return Struct_1(global2.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(651f)), _wgslsmith_f_op_f32(-1165f - -838f))))), _wgslsmith_f_op_f32(f32(-1f) * -658f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-165f, -630f)))));
    global0 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.e, ~8067u, 5002u)), firstLeadingBit(~(~max(vec3<u32>(global0.x, global2.a.x, global2.a.x), vec3<u32>(arg_1, global0.x, u_input.e)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.x)))), -679f, -651f, _wgslsmith_f_op_f32(-var_0.x))))));
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    global1 = array<i32, 5>();
    global2 = func_4(func_2(), ~61697u);
    let var_0 = func_2();
    global2 = Struct_1(global2.a);
    global0 = global2.a;
    return Struct_3(-(-vec4<i32>(18057i, u_input.d, -6061i, global1[_wgslsmith_index_u32(38852u, 5u)]) >> (select(abs(vec4<u32>(global2.a.x, 15377u, u_input.e, 11358u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 61091u, arg_1, var_0.a.x), vec4<u32>(41178u, global2.a.x, global2.a.x, arg_1)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    let var_0 = (countOneBits(~vec4<u32>(4294967295u, 26406u, 116298u, 11454u)) ^ ~vec4<u32>(global0.x, global0.x, 1u, func_4(Struct_1(vec3<u32>(arg_1.a.x, global0.x, 1u)), 0u).a.x)) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 6020u), ~global2.a.zz) & ~func_4(Struct_1(arg_1.a), 4294967295u).a.x, min(abs(global0.x), ~global2.a.x), firstLeadingBit(select(global2.a.x, 58689u, all(vec2<bool>(false, false)))), ~firstTrailingBit(1u));
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-680f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_div_f32(-2789f, 767f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1146f))), _wgslsmith_f_op_f32(f32(-1f) * -606f))), var_0.x, Struct_2(vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(-2528f, 379f)), -205f), -381f));
    var var_2 = false;
    let var_3 = _wgslsmith_div_vec2_i32(~(-arg_2.a.zx), vec2<i32>(countOneBits(-20602i), global1[_wgslsmith_index_u32(~select(countOneBits(arg_1.a.x), _wgslsmith_dot_vec2_u32(global2.a.yx, vec2<u32>(arg_1.a.x, 8064u)), true), 5u)]));
    var_2 = true;
    return reverseBits(_wgslsmith_mult_i32(60972i, -(func_1(338f, 15625u, Struct_2(vec2<f32>(-352f, -1232f), -908f)).a.x >> (~global0.x % 32u))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = reverseBits(4294967295u);
    let var_1 = !(!any(vec3<bool>(true, true, true)));
    let var_2 = 4294967295u;
    global0 = abs(select(func_4(func_4(arg_2, _wgslsmith_mult_u32(62388u, 0u)), firstTrailingBit(var_2)).a, ~global2.a, true));
    var var_3 = countOneBits(-(~(-1i)));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-1772f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(582f, arg_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, var_1))))), arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(abs(~(~_wgslsmith_div_vec3_u32(global2.a, vec3<u32>(global2.a.x, global2.a.x, u_input.e)))), _wgslsmith_add_vec2_i32(vec2<i32>(func_5(func_1(638f, u_input.e, Struct_2(vec2<f32>(-649f, 416f), 1445f)), func_4(Struct_1(vec3<u32>(global2.a.x, global0.x, global2.a.x)), u_input.e), Struct_3(vec4<i32>(-72i, u_input.a, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(7786u, 5u)]))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(global1[_wgslsmith_index_u32(u_input.e, 5u)], global1[_wgslsmith_index_u32(29945u, 5u)], -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.e, 5u)], global1[_wgslsmith_index_u32(global2.a.x, 5u)], u_input.d)), -vec3<i32>(u_input.d, global1[_wgslsmith_index_u32(u_input.e, 5u)], global1[_wgslsmith_index_u32(33228u, 5u)]))), -u_input.b.xz), Struct_1(abs(~select(vec3<u32>(4294967295u, 10298u, 52519u), vec3<u32>(u_input.e, u_input.e, global2.a.x), true))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(475f + 886f) + 960f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1037f), 678f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(788f + -494f), 256f)), _wgslsmith_f_op_f32(f32(-1f) * -371f)));
    global2 = Struct_1(vec3<u32>(global0.x, u_input.e, 42812u));
    global2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zy, -1000f, _wgslsmith_add_u32(u_input.e, ~0u));
}

