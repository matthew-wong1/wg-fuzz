struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1i, vec3<f32>(-196f, -1607f, -618f), -2686i);

var<private> global1: array<bool, 6> = array<bool, 6>(true, true, true, false, true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec3<i32> {
    global1 = array<bool, 6>();
    global1 = array<bool, 6>();
    let var_0 = _wgslsmith_div_vec4_i32(u_input.b, -u_input.b);
    let var_1 = Struct_2(_wgslsmith_sub_i32(i32(-1i) * -52193i, u_input.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-116f, -702f, -1288f)))), _wgslsmith_clamp_i32(u_input.b.x, u_input.d.x, firstTrailingBit(u_input.b.x | reverseBits(0i))));
    var var_2 = -1610f;
    return abs(u_input.b.zzx & u_input.b.yxy);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(global0.b.yx * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(573f, -816f)), _wgslsmith_f_op_vec2_f32(select(global0.b.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 838f)), global1[_wgslsmith_index_u32(reverseBits(0u), 6u)]))) * global0.b.xx));
    var var_1 = ~2147483647i;
    var var_2 = false;
    var var_3 = !global1[_wgslsmith_index_u32(firstLeadingBit(~(u_input.e.x & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, 1435u, 1u), vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x)))), 6u)];
    let var_4 = 762f;
    return select(select(vec3<bool>(global1[_wgslsmith_index_u32(abs(~1u), 6u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(82608u, u_input.e.x), 6u)], all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)]))), vec3<bool>(global1[_wgslsmith_index_u32(max(u_input.e.x, u_input.e.x) >> (select(u_input.e.x, u_input.e.x, true) % 32u), 6u)], false, true), select(_wgslsmith_f_op_f32(max(global0.b.x, var_0.x)) > var_4, global1[_wgslsmith_index_u32(u_input.e.x, 6u)] | any(vec3<bool>(global1[_wgslsmith_index_u32(30226u, 6u)], false, true)), any(vec2<bool>(true, true)))), !select(vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(94122u, 6u)], true)), global1[_wgslsmith_index_u32(63812u, 6u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(~u_input.e.x, 6u)], global1[_wgslsmith_index_u32(24441u, 6u)] || global1[_wgslsmith_index_u32(u_input.e.x, 6u)]), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)], true)), false), select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(23337u, 6u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 6u)], false, false)), vec3<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], false, false)), !global1[_wgslsmith_index_u32(32558u, 6u)])), !vec3<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 6u)])), true, true), !(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(15997u, 6u)], true)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.c, u_input.d.x), i32(-1i) * -1i, global0.a, firstLeadingBit(1348i) & _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, -1i), u_input.b.zw)), vec4<i32>(global0.c ^ 2147483647i, _wgslsmith_mult_i32(-34710i, global0.c), 1i, ~u_input.a) << (vec4<u32>(1u, ~arg_2.x, arg_2.x, select(61360u, 4294967295u, arg_1.x)) % vec4<u32>(32u))), global0.b, 0i);
    let var_1 = Struct_3(Struct_1(select(true, false, true), 7639u, vec4<bool>(false, true && arg_1.x, any(!vec2<bool>(false, arg_3)), false), abs(~vec3<u32>(u_input.e.x, arg_2.x, 1u))), select(!select(vec3<bool>(true, false, arg_3), func_3(), func_3()), func_3(), vec3<bool>(!global1[_wgslsmith_index_u32(~0u, 6u)], true || all(vec3<bool>(arg_1.x, arg_3, false)), true)), vec3<u32>(arg_2.x, 1u, ~abs(u_input.e.x ^ 1u)));
    var var_2 = ~select(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, -2147483647i), vec3<i32>(var_0.a, 68026i, 43253i)), u_input.d.zyx, var_1.a.a) & u_input.b.xzy;
    return Struct_3(var_1.a, select(var_1.b, vec3<bool>(all(!vec4<bool>(arg_3, global1[_wgslsmith_index_u32(var_1.c.x, 6u)], true, false)), true, true), select(var_1.a.c.zww, var_1.b, var_1.b)), vec3<u32>(~(~_wgslsmith_sub_u32(4294967295u, 39280u)), ~(~(arg_2.x ^ 4294967295u)), ~17261u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(true, ~countOneBits(arg_0.a.d.x) >> (abs(func_2(arg_1.b.xz, arg_0.a.c.xx, arg_0.c, arg_0.b.x).c.x) % 32u), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2203f, -1000f) * vec2<f32>(arg_1.b.x, arg_1.b.x)) + global0.b.xx), !vec2<bool>(arg_2, arg_0.b.x), _wgslsmith_add_vec3_u32(arg_0.a.d, vec3<u32>(u_input.e.x, 176570u, arg_0.c.x)), ~(-1i) > _wgslsmith_mod_i32(global0.c, -2147483647i)).a.c, _wgslsmith_mult_vec3_u32(select(min(arg_0.a.d, arg_0.a.d), vec3<u32>(u_input.e.x, 12116u, arg_0.c.x) >> (vec3<u32>(33434u, 12250u, 0u) % vec3<u32>(32u)), all(arg_0.a.c)), _wgslsmith_div_vec3_u32(arg_0.a.d, arg_0.c ^ arg_0.c))), !select(select(arg_0.a.c.zzz, select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(49889u, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a.b, 6u)], false, arg_2), arg_0.b), any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 6u)]))), select(arg_0.b, func_2(global0.b.zx, vec2<bool>(true, arg_2), vec3<u32>(arg_0.a.d.x, arg_0.a.b, u_input.e.x), global1[_wgslsmith_index_u32(arg_0.a.d.x, 6u)]).b, arg_0.b), !arg_0.b), countOneBits(_wgslsmith_div_vec3_u32(arg_0.c, ~(vec3<u32>(1u, u_input.e.x, u_input.e.x) & arg_0.c))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -957f))))));
    global1 = array<bool, 6>();
    global1 = array<bool, 6>();
    let var_2 = ~select(max(~vec2<u32>(var_0.c.x, 0u), arg_0.c.zy), abs(countOneBits(vec2<u32>(1u, 0u))), vec2<bool>(arg_0.b.x & true, true)) >> (~var_0.a.d.xx % vec2<u32>(32u));
    return vec2<bool>(func_3().x, arg_2);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> StorageBuffer {
    global1 = array<bool, 6>();
    return StorageBuffer(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e.x, 139363u, 0u), ~vec3<u32>(arg_1.x, 1u, 1u)) & ((_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.e.x, 4294967295u), vec3<u32>(u_input.e.x, arg_1.x, 35194u)) | max(vec3<u32>(5879u, u_input.e.x, 4417u), vec3<u32>(arg_1.x, u_input.e.x, 4451u))) << ((vec3<u32>(arg_1.x, arg_1.x, arg_1.x) >> (abs(vec3<u32>(49398u, arg_1.x, 30616u)) % vec3<u32>(32u))) % vec3<u32>(32u))), ~vec3<u32>(arg_1.x, (0u | arg_1.x) | (arg_1.x << (arg_1.x % 32u)), u_input.e.x), -u_input.d.zzz, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1445f * 194f), global0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b.yyy;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-912f, -1000f, global1[_wgslsmith_index_u32(u_input.e.x, 6u)])), global0.b.x)), _wgslsmith_f_op_f32(global0.b.x + 2729f), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.e.x), vec4<u32>(4294967295u, 16991u, u_input.e.x, 25084u)) >= 81201u)), -1805f, -1138f, -474f));
    global1 = array<bool, 6>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-192f))))));
    let var_3 = 0i;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(func_1(), u_input.b.wwx), _wgslsmith_sub_i32(-60101i, var_0.x)), vec2<u32>(min(_wgslsmith_mod_u32(20343u, abs(u_input.e.x)), ~(~u_input.e.x)), ~0u), !func_4(func_2(_wgslsmith_f_op_vec2_f32(-var_1.xw), vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)]), vec3<u32>(u_input.e.x, 67525u, 50397u) >> (vec3<u32>(1u, u_input.e.x, 36249u) % vec3<u32>(32u)), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)], false, global1[_wgslsmith_index_u32(18567u, 6u)]))), Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(451f, var_1.x, -382f), var_1.zwy)), i32(-1i) * -31559i), all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)]))));
}

