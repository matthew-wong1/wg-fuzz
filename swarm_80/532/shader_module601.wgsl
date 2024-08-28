struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), 4294967295u, false, vec2<f32>(-1825f, -784f), vec2<f32>(1093f, -158f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<bool>(false, false, false, true), 4294967295u, true, vec2<f32>(-800f, 479f), vec2<f32>(-712f, -941f)), Struct_1(vec4<bool>(true, false, true, false), 4294967295u, false, vec2<f32>(1023f, -307f), vec2<f32>(820f, 2910f)), Struct_1(vec4<bool>(true, true, true, true), 37114u, true, vec2<f32>(443f, 1000f), vec2<f32>(1371f, -724f)), Struct_1(vec4<bool>(false, false, false, false), 0u, true, vec2<f32>(-170f, 727f), vec2<f32>(-432f, 1538f)), Struct_1(vec4<bool>(false, false, false, true), 4294967295u, false, vec2<f32>(1033f, 867f), vec2<f32>(-991f, -322f)), Struct_1(vec4<bool>(true, false, false, true), 0u, true, vec2<f32>(-1000f, 597f), vec2<f32>(145f, 467f)));

var<private> global3: i32 = 2147483647i;

var<private> global4: array<u32, 1>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec4<i32> {
    global1 = global2[_wgslsmith_index_u32(0u, 6u)];
    let var_0 = !all(global0.a.yxz);
    var var_1 = global2[_wgslsmith_index_u32(~4294967295u, 6u)];
    var var_2 = _wgslsmith_div_f32(global1.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-503f - _wgslsmith_f_op_f32(1000f * -270f)))));
    var var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(~59579u), 6u)];
    return ((vec4<i32>(i32(-1i) * -2147483647i, -6517i, _wgslsmith_mult_i32(u_input.c, 4659i), u_input.c) ^ _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, -70840i, -1i, u_input.c), abs(vec4<i32>(u_input.c, u_input.c, 49192i, 0i)))) & (vec4<i32>(u_input.c, firstLeadingBit(u_input.c), 1i, -26799i) & vec4<i32>(select(u_input.c, 4645i, var_1.c), -2147483647i, ~u_input.c, u_input.c << (global1.b % 32u)))) & vec4<i32>(~(-42185i), ~38161i, _wgslsmith_dot_vec3_i32(max(select(vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(u_input.c, 1i, -1i), false), -vec3<i32>(u_input.c, u_input.c, 38024i)), (vec3<i32>(u_input.c, u_input.c, 38869i) & vec3<i32>(-18280i, -21626i, u_input.c)) >> (_wgslsmith_add_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))), -5132i);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    let var_0 = select(select(select(global0.a.wxx, vec3<bool>(!arg_0.a.x, any(vec2<bool>(global1.a.x, false)), global1.c), true), select(global0.a.yyz, global1.a.yyy, select(global0.a.yxx, arg_0.a.zwy, !arg_0.a.x)), all(global0.a.zx)), !(!(!(!global0.a.wxx))), vec3<bool>(!(min(global1.b, 1u) > _wgslsmith_dot_vec3_u32(arg_1.zwz, vec3<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], global1.b, u_input.a.x))), select(u_input.c == _wgslsmith_mult_i32(-51840i, 1i), true, any(arg_0.a.xz) | any(vec2<bool>(false, global1.c))), !(!all(vec4<bool>(arg_0.c, false, true, global0.c)))));
    var var_1 = global0.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -362f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(-2441f + 1605f))) * global1.d.x))));
}

fn func_2(arg_0: vec4<i32>) -> StorageBuffer {
    var var_0 = Struct_1(!global0.a, ~1u, global0.a.x, _wgslsmith_f_op_vec2_f32(global1.d + vec2<f32>(_wgslsmith_f_op_f32(-global1.d.x), -1166f)), _wgslsmith_f_op_vec2_f32(-global0.d));
    global0 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    global3 = min(~firstTrailingBit(1i), arg_0.x << (~18939u % 32u));
    global0 = Struct_1(select(select(vec4<bool>(false, false, true, false), global0.a, any(var_0.a.wyz)), select(!global0.a, !select(global0.a, vec4<bool>(true, true, global1.c, true), vec4<bool>(true, global1.a.x, true, var_0.c)), all(!var_0.a.xy)), !(!any(var_0.a.xw))), ~_wgslsmith_div_u32(global1.b, ~(19629u >> (1u % 32u))), var_0.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(857f, global0.e.x) + _wgslsmith_f_op_vec2_f32(-var_0.e)), vec2<f32>(global1.e.x, _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(~global0.b, 6u)], abs(~vec4<u32>(var_0.b, 0u, 4294967295u, var_0.b))))));
    var var_1 = arg_0.yw;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(301f, -1662f, 350f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.e.x, -920f, 442f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.d.x, global0.e.x, -162f))), all(vec3<bool>(true, var_0.a.x, var_0.c)))))))), reverseBits(~var_1.x), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d.x, 1u)], 1u)], _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 1i, 64095i, u_input.c), arg_0) << (abs(vec4<u32>(global0.b, global1.b, u_input.b, var_0.b) ^ vec4<u32>(global1.b, 0u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(any(select(global0.a.zz, vec2<bool>(true, global0.a.x), global1.a.yx)), all(global1.a.yzw) && global0.a.x);
    let x = u_input.a;
    s_output = func_2(~countOneBits(min(func_1(), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))));
}

