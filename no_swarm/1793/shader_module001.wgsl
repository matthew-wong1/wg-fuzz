struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 15> = array<u32, 15>(62687u, 4294967295u, 12963u, 18261u, 4294967295u, 17165u, 4294967295u, 9836u, 9451u, 93969u, 22263u, 1u, 3362u, 9548u, 139323u);

var<private> global2: Struct_1 = Struct_1(true, false, vec3<u32>(10104u, 0u, 3181u), vec3<i32>(1i, -40176i, 0i));

var<private> global3: Struct_3;

var<private> global4: vec4<i32> = vec4<i32>(43967i, 4167i, -4285i, -45874i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = vec4<i32>(firstTrailingBit(global2.d.x), global2.d.x, reverseBits(abs(_wgslsmith_add_i32(-69366i, min(-1i, u_input.a)))), ~select(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.a.d.x, 1i), ~global0.a.a.d.yy), u_input.a, true));
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(global2.d.x, ~(-2147483647i), var_0.x), _wgslsmith_div_i32(36875i, ~_wgslsmith_div_i32(_wgslsmith_div_i32(var_0.x, u_input.a), -global3.a.a.d.x)), global3.a.a.d.x & select(_wgslsmith_div_i32(abs(0i), var_0.x), global2.d.x, true), 16185i);
    let var_2 = ~vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 40229i, 1i), global3.a.a.d), global4.zwx));
    let var_3 = ~u_input.c.x;
    var var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global0.a.a.c.x, 1u) ^ ~global0.a.a.c.x, 4294967295u, ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(64686u, global0.a.a.c.x), 15u)], 0u) & vec4<u32>(abs(~global3.a.a.c.x), 14653u, _wgslsmith_mod_u32(reverseBits(var_3), global1[_wgslsmith_index_u32(0u, 15u)]), abs(global2.c.x)), ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(126695u, global0.a.a.c.x, var_3, 35566u), vec4<u32>(global3.a.a.c.x, global0.a.a.c.x, 0u, 4937u)) >> (vec4<u32>(global0.a.a.c.x, 1u, 54499u, 105493u) % vec4<u32>(32u)))), ~(~vec4<u32>(22629u, reverseBits(0u), global3.a.a.c.x, 4294967295u)));
    return select(select(select(arg_0.yx, !select(arg_0.yy, vec2<bool>(global3.a.a.a, global3.a.a.a), false), arg_0.zy), !select(vec2<bool>(true, true), arg_0.xx, true), select(!select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false), arg_0.yy), select(vec2<bool>(false, true), arg_0.xx, global3.a.a.b), !arg_0.xx)), arg_0.xz, arg_0.xx);
}

fn func_2() -> Struct_2 {
    global0 = Struct_3(global3.a);
    let var_0 = true;
    let var_1 = Struct_3(global3.a);
    let var_2 = _wgslsmith_mod_i32(u_input.a, -_wgslsmith_add_i32(global0.a.a.d.x, ~1i));
    let var_3 = select(func_3(!select(vec3<bool>(false, false, false), vec3<bool>(false, global2.a, false), false == global3.a.a.a)), select(select(!vec2<bool>(global3.a.a.b, global2.b), !select(vec2<bool>(true, global3.a.a.b), vec2<bool>(false, false), var_1.a.a.b), !func_3(vec3<bool>(true, true, false))), func_3(select(select(vec3<bool>(true, global0.a.a.b, global2.a), vec3<bool>(global2.a, false, true), vec3<bool>(false, var_0, true)), vec3<bool>(global2.a, false, false), true)), vec2<bool>(!select(true, false, var_1.a.a.b), all(!vec4<bool>(false, var_0, global2.b, true)))), false);
    return Struct_2(Struct_1(!any(vec2<bool>(true, var_1.a.a.a)), global0.a.a.a, _wgslsmith_sub_vec3_u32(global2.c, ~firstLeadingBit(global2.c)), ~(vec3<i32>(-1i) * -vec3<i32>(global3.a.a.d.x, global3.a.a.d.x, 19274i))));
}

fn func_1() -> Struct_2 {
    global4 = vec4<i32>(-1i, _wgslsmith_sub_i32(u_input.a, -53861i), -54240i, -global3.a.a.d.x ^ max(1i, abs(0i)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-180f + 1087f) * _wgslsmith_f_op_f32(f32(-1f) * -1316f)) - -1311f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-736f + _wgslsmith_f_op_f32(230f - 1222f)) + _wgslsmith_f_op_f32(sign(1f))))));
    global3 = Struct_3(global3.a);
    let var_1 = reverseBits(~43653u);
    var var_2 = ~(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(global3.a.a.d, min(vec3<i32>(global3.a.a.d.x, global3.a.a.d.x, -2147483647i), vec3<i32>(-1i, -2147483647i, global3.a.a.d.x))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<u32, 15>();
    var var_1 = Struct_3(func_2());
    var_1 = Struct_3(func_2());
    global4 = vec4<i32>(_wgslsmith_dot_vec2_i32(min(~global2.d.yy, global4.zw), vec2<i32>(global4.x | -global4.x, -9221i)), var_1.a.a.d.x, _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(-5486i, 1i)) << ((global1[_wgslsmith_index_u32(0u, 15u)] | var_0.a.c.x) % 32u), _wgslsmith_dot_vec2_i32(~max(func_2().a.d.xy, global2.d.xy & var_1.a.a.d.xz), -(~_wgslsmith_sub_vec2_i32(vec2<i32>(17232i, var_1.a.a.d.x), vec2<i32>(global0.a.a.d.x, -5297i)))));
    var var_2 = ~1u;
    global1 = array<u32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(firstLeadingBit(var_1.a.a.c.zz) << (~global3.a.a.c.zx % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, 2676u), reverseBits(35830u)), global3.a.a.c.yz)));
}

