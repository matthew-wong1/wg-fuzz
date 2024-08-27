struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<u32>, 26>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global4: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1776f)))));
    var var_1 = ~arg_0.a;
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(14312i, 35894i, u_input.a), u_input.a)), (firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, arg_0.a), vec3<u32>(60555u, 30824u, 4294967295u)) % vec3<u32>(32u))) | ~(-vec3<i32>(u_input.a, 1i, u_input.a))) >> (reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 23664u, arg_0.a), vec3<u32>(arg_0.a, arg_0.a, 3254u)) | min(0u, 0u), 4294967295u, 1u)) % vec3<u32>(32u));
    let var_3 = ~(-var_2.xz);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 1070f));
    return Struct_1(~arg_0.a, _wgslsmith_dot_vec3_i32(-abs(~vec3<i32>(-11773i, u_input.a, var_3.x)), -_wgslsmith_mult_vec3_i32(vec3<i32>(23063i, -1i, var_2.x), vec3<i32>(u_input.a, var_2.x, u_input.a)) >> (~(~vec3<u32>(4294967295u, 19057u, 1u)) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = global3.xxx;
    global4 = _wgslsmith_f_op_f32(-106f + -169f);
    let var_1 = func_2(Struct_2(min(arg_0.a, 4294967295u), arg_0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-168f, -270f)))))));
    var var_2 = -vec3<i32>(-29325i, var_1.b, _wgslsmith_mult_i32(max(var_1.b, _wgslsmith_mod_i32(8437i, var_1.b)), -1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 29536u), vec2<u32>(4294967295u, 4294967295u)) % 32u)));
    var var_3 = func_2(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1636f));
    return select(all(vec2<bool>(var_0.x, !arg_0.b.x)), false, true);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = !vec4<bool>(!(true & global1.x) | global1.x, all(select(global3.wyw, !global1.xxw, global3.yyx)), !(false || global1.x), global1.x);
    let var_1 = vec3<i32>(abs(u_input.a), ~u_input.a, -16215i);
    var var_2 = false;
    var var_3 = Struct_2(~13411u, select(select(!(!var_0.wz), arg_1, true), vec2<bool>(true, !any(vec2<bool>(true, arg_1.x))), true));
    let var_4 = Struct_1(14346u, 2147483647i);
    return !select(select(!select(vec2<bool>(arg_1.x, global3.x), var_0.zw, arg_1), vec2<bool>(global3.x, global1.x), !var_3.b.x), global1.zx, !arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-665f - 138f) * _wgslsmith_f_op_f32(f32(-1f) * -1160f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -532f), -809f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(712f)), 914f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-451f))))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)));
    let var_1 = Struct_2(~45703u, select(select(global1.yy, vec2<bool>(false & global1.x, func_1(Struct_2(4294967295u, vec2<bool>(false, global3.x)))), !func_3(2070f, vec2<bool>(global3.x, global3.x), global2[_wgslsmith_index_u32(1u, 26u)])), vec2<bool>(true, any(global3.xzx)), !(!select(vec2<bool>(global3.x, true), global1.ww, global1.xx))));
    let var_2 = reverseBits(~vec2<u32>(1u, 20116u));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(208f)))))))) != _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_4 = ~(~41415u);
    var var_5 = select(vec4<bool>(any(global3.xxz), any(!global3.zzz), var_1.b.x, any(global1.yx)), select(!(!select(vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(var_1.b.x, global3.x, false, false), vec4<bool>(true, false, global1.x, global1.x))), !select(vec4<bool>(false, global1.x, var_1.b.x, true), select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), false), true), !select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(true, true, true, true), true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(0i & _wgslsmith_mod_i32(u_input.a, u_input.a))), vec3<i32>(5582i, ~1i, max(0i, u_input.a)));
}

