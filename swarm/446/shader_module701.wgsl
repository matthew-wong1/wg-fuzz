struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, true, true, false, false, true, true, true, false, false, false, false, false, false, false, true, false, true, false, true, false, false, true, false, false, false, true, false, false);

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(1i, vec2<i32>(-1i, 48581i), vec4<f32>(-623f, -198f, -180f, -1000f));

var<private> global3: array<bool, 22>;

var<private> global4: Struct_1 = Struct_1(-7039i, vec2<i32>(14863i, -41868i), vec4<f32>(-505f, 1288f, 1071f, 853f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(vec3<bool>(all(vec2<bool>(global3[_wgslsmith_index_u32(16808u << (u_input.a.x % 32u), 22u)], true && global3[_wgslsmith_index_u32(1u, 22u)])), global0[_wgslsmith_index_u32(25666u, 29u)], true));
    global0 = array<bool, 29>();
    var var_1 = Struct_1(-((i32(-1i) * -18918i) ^ firstTrailingBit(global2.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(select(arg_0.a, -1i, global3[_wgslsmith_index_u32(4294967295u, 22u)]), 2147483647i), i32(-1i) * -1i), vec2<i32>(-2147483647i, -_wgslsmith_add_i32(0i, global4.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-781f, _wgslsmith_f_op_f32(f32(-1f) * -933f), arg_0.c.x, -1000f))) + global4.c));
    global1 = abs(~_wgslsmith_mult_u32((21842u << (u_input.a.x % 32u)) << (u_input.a.x % 32u), 14428u));
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32(-countOneBits(global2.b << (vec2<u32>(2143u, u_input.a.x) % vec2<u32>(32u))), global4.b), global2.b, global4.c);
    return vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.a.x == _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x ^ _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.xw)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-943f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, global4.c.x, global2.c.x, global4.c.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-363f, global4.c.x, 753f, 480f))) + global2.c) - global4.c) * global2.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(global2.c - vec4<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global4.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(global4.c.x)))), global2.c.x));
    var var_3 = Struct_2(vec3<bool>(true && any(func_3(Struct_1(35557i, vec2<i32>(global4.b.x, 11228i), vec4<f32>(-868f, global4.c.x, -457f, var_1.x)))), false, func_3(Struct_1(global4.a, vec2<i32>(-1i, global2.a), vec4<f32>(-1389f, global4.c.x, var_1.x, -1378f))).x | (global0[_wgslsmith_index_u32(u_input.a.x, 29u)] && func_3(Struct_1(13259i, vec2<i32>(global2.a, global4.a), vec4<f32>(global2.c.x, global4.c.x, -736f, 138f))).x)));
    var var_4 = var_1.x;
    return _wgslsmith_dot_vec3_i32(~(~(countOneBits(vec3<i32>(global2.b.x, global2.b.x, -1i)) << (abs(vec3<u32>(u_input.a.x, u_input.a.x, 1u)) % vec3<u32>(32u)))), max(vec3<i32>(~(-1i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a, global2.b.x), global4.b)), -vec3<i32>(global4.b.x, global4.b.x, -1i)) >> (~(~(vec3<u32>(1u, u_input.a.x, u_input.a.x) << (u_input.a.yyw % vec3<u32>(32u)))) % vec3<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = -select(1i, func_2() ^ global2.b.x, firstLeadingBit(1u) != u_input.a.x);
    global3 = array<bool, 22>();
    global0 = array<bool, 29>();
    let var_1 = !all(select(vec3<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(44578u, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), all(vec3<bool>(false, global0[_wgslsmith_index_u32(1947u, 29u)], false)), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], true, global3[_wgslsmith_index_u32(57738u, 22u)]))), vec3<bool>(true, false, true || global3[_wgslsmith_index_u32(u_input.a.x, 22u)]), all(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 22u)]))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -425f);
    return vec2<i32>(-68862i, _wgslsmith_mult_i32(i32(-1i) * -global4.b.x, min(arg_0, _wgslsmith_add_i32(_wgslsmith_add_i32(var_0, -1i), reverseBits(global4.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(~_wgslsmith_mult_i32(global2.b.x, -1i << (u_input.a.x % 32u)), func_1(~global4.b.x, max(vec2<i32>(-1i) * -vec2<i32>(global2.a, global4.b.x), firstLeadingBit(global2.b << (u_input.a.yy % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.c.x, global4.c.x), global4.c.zz)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(global2.c.xy)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-563f, global4.c.x, global0[_wgslsmith_index_u32(2791u, 29u)])) - -1228f)), global4.c.x, _wgslsmith_f_op_f32(-global4.c.x), global2.c.x));
    var var_0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, global2.b.x), _wgslsmith_dot_vec2_i32(global2.b ^ vec2<i32>(global4.b.x, -2147483647i), global2.b)), firstTrailingBit(_wgslsmith_mult_i32(global4.b.x, 0i)), -2315i & global4.b.x), vec2<i32>(9599i, global4.b.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 1f, global4.c.x, global4.c.x), _wgslsmith_f_op_vec4_f32(-global4.c))));
    let var_1 = Struct_1(1i, vec2<i32>(var_0.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.b, -var_0.b), abs(global2.a) << (~u_input.a.x % 32u))), vec4<f32>(-118f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1269f)))), _wgslsmith_f_op_f32(109f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-789f)))))));
    global1 = ~_wgslsmith_mult_u32(~(~(6631u >> (u_input.a.x % 32u))), ~(reverseBits(u_input.a.x) << (_wgslsmith_mod_u32(u_input.a.x, 39539u) % 32u)));
    var var_2 = _wgslsmith_mult_i32(countOneBits(-2147483647i), 5958i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) - global2.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_div_f32(var_0.c.x, 1214f))), _wgslsmith_f_op_f32(global2.c.x * 1032f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c.x, -671f)) * _wgslsmith_f_op_f32(exp2(global4.c.x))) * var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1430f)) + _wgslsmith_f_op_f32(max(var_1.c.x, global4.c.x))))));
}

