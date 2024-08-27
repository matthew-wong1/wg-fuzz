struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, false));

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(482f, 861f), vec2<f32>(-408f, 724f), vec2<f32>(1400f, -618f), vec2<f32>(534f, 1005f), vec2<f32>(1264f, 382f), vec2<f32>(-266f, -1662f));

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(floor(1948f))) * global3.b);
}

fn func_3() -> vec2<u32> {
    global3 = Struct_1(any(!global1.a), 1221f, 25036u);
    var var_0 = select(select(!vec4<bool>(all(global4.wz), false, true, global1.a.x || true), select(vec4<bool>(all(vec2<bool>(false, true)), true, 35844u == global3.c, true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global1.a.x, global3.a, false), vec4<bool>(global1.a.x, true, global0[_wgslsmith_index_u32(global3.c, 17u)], global4.x), false), vec4<bool>(!global3.a, global0[_wgslsmith_index_u32(1u, 17u)], !global1.a.x, any(global1.a))), any(vec4<bool>(global1.a.x, true, true, !global4.x))), vec4<bool>(all(!vec4<bool>(global4.x, global3.a, false, global3.a)), all(select(global4.xwx, vec3<bool>(global3.a, false, global0[_wgslsmith_index_u32(global3.c, 17u)]), true)), false, any(global4.wz)), vec4<bool>(any(vec2<bool>(false, any(vec4<bool>(false, true, true, global1.a.x)))), true, all(vec3<bool>(global4.x, true, false)), true));
    var var_1 = Struct_1(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -916f), countOneBits(_wgslsmith_add_u32(1u, ~global3.c)));
    let var_2 = -(~vec4<i32>(countOneBits(2677i), 0i, i32(-1i) * -2147483647i, _wgslsmith_sub_i32(u_input.b, u_input.c.x)));
    var var_3 = u_input.a;
    return ~_wgslsmith_mult_vec2_u32(vec2<u32>(abs(35665u ^ u_input.a.x), ~27273u), vec2<u32>(firstLeadingBit(var_1.c), max(30342u, 4294967295u)) >> (abs(var_3.wx) % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(global1.a), vec2<bool>(global1.a.x, global4.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.b + global3.b))))), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.wx), ~func_3()));
    let var_1 = _wgslsmith_f_op_f32(-var_0.b);
    global2 = array<vec2<f32>, 6>();
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, u_input.b, -2147483647i), (vec3<i32>(u_input.c.x, 25506i, -3689i) << (vec3<u32>(global3.c, 37076u, 35401u) % vec3<u32>(32u))) >> (~vec3<u32>(arg_0.c, 24914u, global3.c) % vec3<u32>(32u))), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -35671i, 2147483647i), vec3<i32>(-14474i, -41923i, -1i))) & ~(~vec3<i32>(u_input.c.x, 2147483647i, 12542i))), abs(reverseBits(-vec3<i32>(1i, u_input.b, u_input.b) & -vec3<i32>(-1i, u_input.c.x, u_input.c.x))), -_wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(46955i, u_input.c.x, u_input.b), vec3<i32>(-31481i, -1i, 1i)), select(vec3<i32>(u_input.c.x, u_input.b, -2509i) | vec3<i32>(0i, -32496i, u_input.b), ~vec3<i32>(1i, 15819i, 1i), select(vec3<bool>(false, var_0.a, false), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.c, 17u)], false), global0[_wgslsmith_index_u32(56505u, 17u)]))));
    var var_3 = select(vec4<i32>(-12146i, u_input.b, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-43378i, 71914i, -1i, var_2.x) << (u_input.a % vec4<u32>(32u))), -vec4<i32>(-1i, -9125i, -1873i, -35530i) >> (u_input.a % vec4<u32>(32u))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, u_input.b), vec3<i32>(-8334i, u_input.c.x, 1i)) ^ u_input.b, 53992i)), reverseBits(~vec4<i32>(u_input.c.x, firstTrailingBit(u_input.c.x), -14823i, -13149i)), global4.x);
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.b))), countOneBits(1u ^ global3.c)));
    global0 = array<bool, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(exp2(global3.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * -297f))));
}

