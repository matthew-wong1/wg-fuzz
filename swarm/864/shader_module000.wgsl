struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true, vec2<i32>(21478i, 28417i), vec2<i32>(27285i, 0i), vec2<f32>(-433f, 322f), vec2<f32>(-492f, -415f)), -714f);

var<private> global1: array<i32, 5> = array<i32, 5>(i32(-2147483648), 2147483647i, -13208i, -58626i, -31739i);

var<private> global2: array<f32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: u32) -> vec2<f32> {
    global1 = array<i32, 5>();
    var var_0 = arg_0;
    var_0 = Struct_2(Struct_1(!arg_0.a.a, _wgslsmith_add_vec2_i32(-global0.a.c, ~firstLeadingBit(u_input.d.yx)), _wgslsmith_div_vec2_i32(-var_0.a.c, vec2<i32>(-38446i, min(global0.a.c.x, global1[_wgslsmith_index_u32(arg_3, 5u)]))), var_0.a.d, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(237f, 825f)), 154f), arg_1)), 368f);
    var var_1 = arg_0;
    let var_2 = var_0.a.c.x;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.a.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-857f, 1000f), _wgslsmith_f_op_vec2_f32(-var_0.a.d)), global0.a.d) + arg_0.a.d)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(-1017f, _wgslsmith_div_f32(arg_0.d.x, -946f), select(false, global0.a.a, global0.a.a))) != _wgslsmith_div_f32(122f, global2[_wgslsmith_index_u32(21405u, 3u)]), _wgslsmith_div_vec2_i32(-(~vec2<i32>(arg_0.c.x, u_input.d.x)), vec2<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(5764u, 5u)], arg_1.x), 33552i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-30304i, arg_1.x) | vec2<i32>(-2147483647i, -2147483647i), u_input.a.yx | vec2<i32>(-43135i, u_input.a.x)) & (vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.b.x, 5u)]) ^ -global0.a.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(arg_0, global2[_wgslsmith_index_u32(42551u, 3u)]), -1027f, false, u_input.b.x))) * vec2<f32>(global0.a.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1758f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, global2[_wgslsmith_index_u32(u_input.b.x, 3u)])))))), arg_0.e.x);
    global0 = var_0;
    var var_1 = ~vec2<u32>(u_input.b.x, 60954u);
    let var_2 = Struct_1(any(vec2<bool>(_wgslsmith_mod_i32(1i, arg_1.x) > arg_0.b.x, var_0.a.a)), firstLeadingBit(abs(_wgslsmith_div_vec2_i32(arg_1.zy, _wgslsmith_sub_vec2_i32(arg_0.b, vec2<i32>(1i, -1i))))), ~vec2<i32>(max(u_input.d.x, u_input.a.x) | _wgslsmith_add_i32(6313i, global0.a.c.x), ~firstLeadingBit(-30344i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), global0.a.e.x), global0.a.d);
    var var_3 = vec2<i32>(-28936i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.a.b.x, var_0.a.b.x), _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), _wgslsmith_add_i32(var_0.a.c.x, arg_0.b.x))));
    return Struct_2(Struct_1((50369u == var_1.x) & var_0.a.a, select(arg_1.yw & (vec2<i32>(3840i, u_input.d.x) >> (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u))), global0.a.b, vec2<bool>(select(true, var_0.a.a, arg_0.a), -17581i > var_3.x)), countOneBits(_wgslsmith_div_vec2_i32(-arg_0.c, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(var_2.c.x, global0.a.c.x)))), vec2<f32>(1065f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e.x)))), vec2<f32>(_wgslsmith_f_op_f32(114f - -624f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(786f * var_0.a.e.x), -1020f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f)));
}

fn func_1() -> vec3<i32> {
    global2 = array<f32, 3>();
    var var_0 = func_2(global0.a, abs(countOneBits(vec4<i32>(_wgslsmith_div_i32(-2147483647i, -54377i), select(-1i, -1i, true), ~2147483647i, u_input.d.x))));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-var_0.b));
    let var_1 = u_input.b;
    global2 = array<f32, 3>();
    return u_input.a.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 5u)], 33475i, global0.a.b.x), firstTrailingBit(u_input.a.ywx)));
    var var_1 = func_1();
    var var_2 = _wgslsmith_add_vec4_u32(~(~min(~vec4<u32>(14467u, u_input.b.x, 4294967295u, 28448u), ~vec4<u32>(4294967295u, 1u, u_input.c, 1u))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 23011u, 30599u, u_input.c), vec4<u32>(u_input.c, 1u, u_input.b.x, u_input.b.x)), u_input.b.x, u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.c)), max(~vec4<u32>(0u, 14127u, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, 0u, u_input.b.x) ^ vec4<u32>(u_input.b.x, 7959u, u_input.b.x, u_input.c))) >> (min(vec4<u32>(firstTrailingBit(745u), u_input.b.x | u_input.c, ~u_input.b.x, u_input.b.x), vec4<u32>(reverseBits(24823u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.b.x), vec3<u32>(0u, u_input.b.x, 0u)), _wgslsmith_mod_u32(u_input.b.x, 0u), u_input.c)) % vec4<u32>(32u)));
    global2 = array<f32, 3>();
    let var_3 = firstLeadingBit(u_input.b.x);
    var var_4 = !select(~var_2.x == 15863u, false, !(!global0.a.a)) | global0.a.a;
    var var_5 = Struct_1(true, u_input.a.yy, u_input.a.xw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.e) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(var_3, 3u)], global2[_wgslsmith_index_u32(var_3, 3u)])), global0.b), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.a.e * vec2<f32>(global0.b, global0.a.e.x)), _wgslsmith_f_op_vec2_f32(-global0.a.d))))), vec2<f32>(_wgslsmith_f_op_f32(1721f - _wgslsmith_f_op_f32(global0.a.d.x + global0.b)), 868f));
    let var_6 = firstLeadingBit(~(-_wgslsmith_mod_i32(29367i, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(-(u_input.d.zxy >> (vec3<u32>(33432u, 68965u, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(reverseBits(var_2.x), 0u, 4294967295u) % vec3<u32>(32u)), u_input.a.zxz), _wgslsmith_dot_vec3_i32(u_input.d.wzw | ~vec3<i32>(global1[_wgslsmith_index_u32(var_2.x, 5u)], var_0.x, var_1.x), -var_0) >> (_wgslsmith_dot_vec3_u32(~(~u_input.b), min(var_2.zzz, ~var_2.yyy)) % 32u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(565f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2238f, var_5.e.x))), global0.b, global2[_wgslsmith_index_u32(46616u, 3u)]))));
}

