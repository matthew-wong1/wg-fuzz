struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-200f, -608f);

var<private> global1: array<i32, 22>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_3 = Struct_3(vec3<f32>(-1082f, 1353f, -1010f), 14355i, vec4<f32>(-1000f, 877f, 1134f, 1000f), false, Struct_2(vec2<u32>(22461u, 4294967295u)));

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_4(select(vec2<bool>(true, false), vec2<bool>(false, _wgslsmith_f_op_f32(ceil(global0.x)) >= _wgslsmith_f_op_f32(-global3.a.x)), !(!global3.d) | true));
    return ~vec4<u32>(0u, 4294967295u, global4.x, 26805u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = vec3<i32>(24717i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global4.x, 44262u, 1u) << (vec4<u32>(global3.e.a.x, global4.x, 15959u, global4.x) % vec4<u32>(32u)), ~(~vec4<u32>(global3.e.a.x, arg_2, u_input.a, 38180u))) % 32u), 8504i, ~18715i);
    global4 = firstTrailingBit(func_2());
    var_0 = -(-(~(-vec3<i32>(-2147483647i, arg_0.a.x, arg_3.b))) << ((~global4.zxw & vec3<u32>(arg_2, select(1u, 1u, false), ~4294967295u)) % vec3<u32>(32u)));
    global2 = arg_0.b;
    let var_1 = arg_0;
    return arg_0.b.xx;
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    global4 = vec4<u32>(~_wgslsmith_mult_u32(global4.x, ~(~1u)), global3.e.a.x, 0u, ~(global4.x << (firstLeadingBit(max(global3.e.a.x, 4294967295u)) % 32u)));
    var var_0 = Struct_3(global3.c.zxw, _wgslsmith_sub_i32(u_input.b, 18533i) | -global3.b, global3.c, !(_wgslsmith_f_op_f32(abs(global0.x)) == _wgslsmith_f_op_f32(f32(-1f) * -306f)), Struct_2(reverseBits(_wgslsmith_div_vec2_u32(global4.yz, vec2<u32>(18579u, 48733u)))));
    let var_1 = global2.x;
    let var_2 = Struct_1(vec2<i32>(2147483647i, _wgslsmith_clamp_i32(2147483647i, var_0.b, -1i) << (abs(67249u) % 32u)) | (_wgslsmith_div_vec2_i32(-vec2<i32>(14484i, u_input.b), reverseBits(vec2<i32>(global3.b, global1[_wgslsmith_index_u32(global3.e.a.x, 22u)]))) >> (~countOneBits(vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u))), !(!(!vec3<bool>(global3.d, var_0.d, arg_0.a.x))));
    var var_3 = ~(abs(select(vec3<i32>(4356i, -12270i, var_0.b) ^ vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(46769u, 22u)]), -vec3<i32>(1i, global1[_wgslsmith_index_u32(1u, 22u)], -45484i), all(vec4<bool>(false, true, false, arg_0.a.x)))) & min(~vec3<i32>(global3.b, 2147483647i, global1[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(global3.b, global3.b, 0i), vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(var_0.e.a.x, 22u)], -18607i))));
    return select(select(vec3<bool>(false, global3.d, all(!vec2<bool>(true, var_0.d))), !vec3<bool>(select(true, global3.d, var_0.d), true, true), true), var_2.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-global3.c.wx);
    global1 = array<i32, 22>();
    let var_0 = Struct_4(select(!func_1(Struct_1(vec2<i32>(u_input.b, global3.b), vec3<bool>(true, false, global3.d)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-712f, global0.x, global3.a.x))), min(55168u, 44842u), Struct_3(global3.c.wzw, 43742i, global3.c, false, Struct_2(global3.e.a))), !vec2<bool>(true, any(vec4<bool>(true, global2.x, global2.x, false))), select(!select(global2.yy, vec2<bool>(global3.d, true), true), !(!global2.yz), global2.xx)));
    global4 = vec4<u32>(countOneBits(global3.e.a.x), ~(37808u | _wgslsmith_dot_vec4_u32(vec4<u32>(4014u, global3.e.a.x, 83139u, 32017u) | vec4<u32>(global3.e.a.x, 25865u, 0u, global4.x), reverseBits(vec4<u32>(global4.x, 4294967295u, u_input.a, u_input.a)))), 102094u, 1u & global4.x);
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_div_i32(-(~global3.b), 2147483647i), 1i), select(select(vec3<bool>(!var_0.a.x, false, any(global2.yx)), vec3<bool>(global3.d | global2.x, global2.x && false, true), _wgslsmith_f_op_f32(-global0.x) >= global3.a.x), select(!(!vec3<bool>(global2.x, false, var_0.a.x)), !(!vec3<bool>(true, global3.d, false)), !select(vec3<bool>(global3.d, var_0.a.x, true), vec3<bool>(false, global3.d, true), global2.x)), select(!select(vec3<bool>(global3.d, false, global2.x), vec3<bool>(false, var_0.a.x, global3.d), global3.d), vec3<bool>(true, true, true), func_3(Struct_4(vec2<bool>(var_0.a.x, true))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global3.c.wyw)) - global3.c.yzx) * global3.a)), _wgslsmith_mod_i32(firstLeadingBit(~(~u_input.b)), _wgslsmith_sub_i32(-global3.b, -u_input.b) >> (u_input.a % 32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, global0.x, global3.c.x, global0.x), vec4<f32>(global3.a.x, global0.x, global0.x, global3.a.x))))) * global3.c), _wgslsmith_f_op_vec4_f32(min(global3.c, vec4<f32>(-1473f, 1000f, 871f, _wgslsmith_div_f32(-173f, global3.c.x)))))), all(!(!vec4<bool>(var_1.b.x, true, global2.x, false))), global3.e);
    global3 = Struct_3(vec3<f32>(-1713f, _wgslsmith_f_op_f32(floor(global0.x)), 2808f), -1i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.c.x + global3.a.x))) - -511f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(869f)) - 595f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f)), global3.e);
    let var_3 = (~global3.b ^ 0i) <= u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(firstTrailingBit(max(vec4<i32>(u_input.b, var_1.a.x, var_1.a.x, -19095i) << (vec4<u32>(33017u, global3.e.a.x, 1u, 3110u) % vec4<u32>(32u)), -vec4<i32>(0i, 1i, global3.b, 14395i))), -(~(vec4<i32>(global3.b, global1[_wgslsmith_index_u32(89610u, 22u)], global1[_wgslsmith_index_u32(global3.e.a.x, 22u)], var_2.b) >> (vec4<u32>(var_2.e.a.x, global3.e.a.x, global3.e.a.x, var_2.e.a.x) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(trunc(var_2.a)));
}

