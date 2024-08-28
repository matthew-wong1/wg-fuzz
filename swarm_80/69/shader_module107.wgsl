struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 10>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = !any(select(vec3<bool>(!global1[_wgslsmith_index_u32(6176u, 10u)], global0.b.x, arg_0 <= 0i), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 10u)], false, false), global0.b.yyy));
    global1 = array<bool, 10>();
    return select(!(!global0.b.wy), vec2<bool>(global0.b.x, true), global0.b.xx);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = arg_1;
    let var_1 = u_input.d;
    global0 = Struct_1(select(reverseBits(_wgslsmith_add_vec3_i32(var_0.a, arg_1.a)), arg_0.c.wxy, !(!vec3<bool>(global0.b.x, true, false))), vec4<bool>(false, false, any(select(vec2<bool>(false, true), func_3(-2147483647i), global0.b.zx)), global0.b.x), abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.a.x, global0.c.x, -51769i, arg_1.a.x), ~arg_0.c)), arg_1.d);
    var var_2 = vec2<u32>(_wgslsmith_clamp_u32(~arg_0.d.x, arg_1.d.x, arg_0.d.x), ((var_0.d.x ^ global0.d.x) << (countOneBits(4294967295u) % 32u)) >> (((global0.d.x >> (11496u % 32u)) & ~18439u) % 32u)) | ~reverseBits(~firstLeadingBit(vec2<u32>(73336u, var_0.d.x)));
    var var_3 = true;
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(274f + -794f), -1111f)))), _wgslsmith_f_op_f32(322f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -587f))), _wgslsmith_f_op_f32(222f + 309f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(655f + _wgslsmith_f_op_f32(-1000f + 987f)) + -1818f))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(150f * -1000f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_1, arg_1, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1889f)))));
    let var_2 = Struct_1(firstLeadingBit(-abs(~vec3<i32>(-76377i, u_input.b.x, 1i))), !(!select(select(vec4<bool>(true, true, arg_1.b.x, true), global0.b, global0.b.x), global0.b, false)), abs(min(arg_1.c, arg_1.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(57053u, global0.d.x, arg_1.d.x), vec3<u32>(global0.d.x, firstTrailingBit(global0.d.x) ^ u_input.d, arg_1.d.x)));
    global0 = Struct_1(countOneBits(max(_wgslsmith_clamp_vec3_i32(global0.a, global0.a, vec3<i32>(14424i, 70969i, u_input.c)), arg_1.c.zxz & vec3<i32>(global0.c.x, arg_1.a.x, 0i)) | abs(u_input.b)), vec4<bool>(true, arg_0 & !func_3(-6373i).x, select(select(var_1.x >= var_0, -149f > var_0, true | global0.b.x), false, -1394f == _wgslsmith_f_op_f32(var_0 - var_0)), 20427i == _wgslsmith_add_i32(abs(global0.a.x), _wgslsmith_sub_i32(arg_1.c.x, arg_1.a.x))), abs(firstTrailingBit(-vec4<i32>(global0.a.x, 32123i, 29345i, global0.c.x))), countOneBits(global0.d));
    let var_3 = var_2;
    return !(-2147483647i < _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -min(-10566i, 1i), global0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(u_input.b ^ u_input.b), !global0.b, select(_wgslsmith_add_vec4_i32(min(abs(vec4<i32>(u_input.b.x, 6116i, 6636i, -45679i)), global0.c), global0.c >> (~vec4<u32>(2796u, 0u, u_input.d, u_input.d) % vec4<u32>(32u))), vec4<i32>(u_input.a, global0.a.x, _wgslsmith_div_i32(-11927i, 20325i) & _wgslsmith_mult_i32(4185i, u_input.b.x), -89842i), select(vec4<bool>(true, func_1(global0.b.x, Struct_1(u_input.b, vec4<bool>(global0.b.x, false, false, true), global0.c, global0.d)), any(global0.b.yxz), global1[_wgslsmith_index_u32(1856u, 10u)]), global0.b, !select(global0.b, global0.b, vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], true)))), (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), global0.d) | max(global0.d, global0.d)) | abs(max(abs(global0.d), ~global0.d)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1061f, _wgslsmith_f_op_f32(max(-1000f, -2226f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1242f + 1000f))))))));
    var var_2 = _wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(countOneBits(~global0.d.x), var_0.d.x)), var_0.d.x);
    let var_3 = 1i;
    var_2 = _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~abs(global0.d.x), 25818u), ~(~u_input.d << (reverseBits(var_0.d.x) % 32u)), firstLeadingBit(firstTrailingBit(min(0u, global0.d.x)))));
    let var_4 = func_1((true || all(global0.b)) & (true && (true || !global1[_wgslsmith_index_u32(u_input.d, 10u)])), Struct_1(select(vec3<i32>(1i, u_input.c << (0u % 32u), u_input.e), vec3<i32>(_wgslsmith_mult_i32(-19993i, var_0.c.x), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, 0i), var_0.a)), true), vec4<bool>(global1[_wgslsmith_index_u32(global0.d.x, 10u)] && all(vec3<bool>(true, global0.b.x, true)), var_0.b.x, func_3(u_input.e & u_input.a).x, global0.b.x), global0.c, vec3<u32>(u_input.d, _wgslsmith_add_u32(64913u ^ u_input.d, global0.d.x << (17520u % 32u)), var_0.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-892f, ~abs(var_3), -974f, ~abs((u_input.d ^ 0u) | var_0.d.x));
}

