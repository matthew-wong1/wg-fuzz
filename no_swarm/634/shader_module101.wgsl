struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 17>;

var<private> global2: array<vec2<i32>, 29>;

var<private> global3: Struct_4 = Struct_4(vec2<bool>(true, false), true);

var<private> global4: Struct_2 = Struct_2(vec4<i32>(0i, -1i, i32(-2147483648), 1i), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-650f, -2482f, 249f, -1839f), -1443f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    global4 = Struct_2(~u_input.c & -abs(vec4<i32>(12244i, u_input.a.x, -14248i, u_input.c.x)), Struct_1(vec3<bool>(any(!vec4<bool>(false, global3.a.x, true, false)), true, _wgslsmith_f_op_f32(-global0.c) > _wgslsmith_f_op_f32(-global4.b.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.b, vec4<f32>(global0.c, global0.c, global4.b.b.x, -2036f), true)))), 1179f));
    global2 = array<vec2<i32>, 29>();
    var var_0 = (vec3<u32>(~(u_input.b ^ 4294967295u), u_input.b, countOneBits(~u_input.b)) << (_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, 85220u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(48412u, u_input.b, 8531u), vec3<u32>(64596u, 44493u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(0u, 90119u, 4294967295u)))) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(4294967295u, u_input.b, u_input.b)), _wgslsmith_mod_vec3_u32(~select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<bool>(false, true, true)), ~abs(vec3<u32>(u_input.b, 14090u, u_input.b))), vec3<u32>(_wgslsmith_div_u32(u_input.b, ~u_input.b), reverseBits(abs(u_input.b)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(0u, u_input.b)))) % vec3<u32>(32u));
    global2 = array<vec2<i32>, 29>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(global0.b.yzw)), u_input.e.xx);
    return true;
}

fn func_2() -> Struct_4 {
    global4 = Struct_2(abs(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(7088i, 2147483647i, u_input.c.x, global4.a.x), min(global4.a, global4.a)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i, global4.a.x, global4.a.x), vec4<i32>(-2147483647i, global4.a.x, u_input.c.x, -2147483647i)), abs(vec4<i32>(global4.a.x, 0i, 0i, global4.a.x)), select(vec4<bool>(true, true, global3.a.x, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(7716u, 17u)], global0.a.x, true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 17u)], global3.a.x, global1[_wgslsmith_index_u32(102541u, 17u)]))))), Struct_1(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(38368u, 17u)], global4.b.a.x, false), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], false, false), global4.b.a, global0.a), vec3<bool>(global3.b, global3.a.x, global3.a.x)), select(global4.b.a, global4.b.a, !vec3<bool>(global0.a.x, global0.a.x, true)), func_3() & true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global4.b.b, vec4<f32>(global0.b.x, -587f, global0.c, global0.b.x))) - global4.b.b)), global4.b.c));
    var var_0 = _wgslsmith_f_op_vec4_f32(step(global0.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global4.b.b)))))));
    global4 = Struct_2(_wgslsmith_mod_vec4_i32(~global4.a, (vec4<i32>(global4.a.x, u_input.e.x, u_input.e.x, 2147483647i) & -u_input.a) | (select(global4.a, u_input.c, vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], false, false, global1[_wgslsmith_index_u32(0u, 17u)])) ^ vec4<i32>(u_input.c.x, 4592i, global4.a.x, 0i))), Struct_1(vec3<bool>(!global4.b.a.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.b, 0u)), ~vec3<u32>(u_input.b, 1u, u_input.b)), 17u)], global4.b.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.b.b) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, var_0.x, var_0.x, global4.b.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * var_0.x), var_0.x)));
    let var_1 = countOneBits(global4.a.x);
    var var_2 = global4.b.a.zy;
    return Struct_4(select(select(!(!vec2<bool>(global3.b, var_2.x)), vec2<bool>(true, true), select(!vec2<bool>(true, var_2.x), vec2<bool>(false, false), var_2.x)), select(vec2<bool>(true, !global0.a.x), !select(vec2<bool>(true, var_2.x), vec2<bool>(global4.b.a.x, global4.b.a.x), global4.b.a.xy), any(!vec2<bool>(global4.b.a.x, global4.b.a.x))), select(!global4.b.a.xy, !global4.b.a.yx, false)), global4.b.a.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> vec4<f32> {
    let var_0 = vec2<f32>(-2507f, global4.b.c);
    var var_1 = all(global4.b.a);
    global0 = global4.b;
    global3 = Struct_4(!vec2<bool>(!(!global1[_wgslsmith_index_u32(u_input.b, 17u)]), true), arg_1.a.x || select(all(select(vec4<bool>(true, global4.b.a.x, global4.b.a.x, false), vec4<bool>(true, false, false, true), vec4<bool>(global3.a.x, false, global3.a.x, arg_1.b))), true, global0.a.x));
    global4 = Struct_2(u_input.a, Struct_1(!select(vec3<bool>(false, global3.b, true), vec3<bool>(false, false, global3.b), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.c, -1353f, global4.b.c, 246f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(421f + global4.b.c) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -249f))))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.b * global4.b.b)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1927f - 1545f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1199f, global4.b.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.b.c + global4.b.c))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<f32>(-474f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(global4.b.c + global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-910f * var_0.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    global1 = array<bool, 17>();
    let var_0 = firstLeadingBit(firstLeadingBit(~abs(~vec2<u32>(u_input.b, arg_1))));
    var var_1 = Struct_2(reverseBits(min(~(vec4<i32>(arg_3, global4.a.x, arg_2.b.x, -4450i) | u_input.c), select(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(global4.a.x, -41579i, arg_3, u_input.a.x)), vec4<i32>(u_input.e.x, 31387i, -2147483647i, global4.a.x), all(vec4<bool>(global4.b.a.x, true, global0.a.x, false))))), arg_0);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(arg_0.b.xww)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-646f - -655f), 473f, _wgslsmith_div_f32(1918f, arg_2.a.x)) - arg_0.b.xwx), select(select(select(vec3<bool>(false, var_1.b.a.x, var_1.b.a.x), global0.a, vec3<bool>(false, false, var_1.b.a.x)), arg_0.a, vec3<bool>(global4.b.a.x, global4.b.a.x, true)), arg_0.a, global0.a))), global2[_wgslsmith_index_u32(~0u, 29u)]);
    var var_3 = abs(1u);
    return Struct_3(vec3<f32>(arg_0.c, arg_2.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.c)), var_2.a.x), _wgslsmith_f_op_vec4_f32(func_4(vec2<i32>(arg_3, global4.a.x), Struct_4(global4.b.a.xx, true))).x))), firstTrailingBit(vec2<i32>(var_2.b.x, -2147483647i)));
}

fn func_1() -> Struct_3 {
    return func_5(Struct_1(vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global4.b.a.x, global4.b.a.x)), false, global0.a.x), _wgslsmith_f_op_vec4_f32(func_4(abs(u_input.e.xz), func_2())), _wgslsmith_f_op_f32(sign(global4.b.b.x))), firstTrailingBit((~0u << (u_input.b % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 39285u), ~vec4<u32>(u_input.b, 4294967295u, 12469u, u_input.b))), Struct_3(global0.b.wzz, reverseBits(vec2<i32>(u_input.c.x, global4.a.x) ^ reverseBits(global4.a.yz))), _wgslsmith_add_i32(firstLeadingBit(1i), firstTrailingBit(1i) & global4.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global4.b;
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.e.x), min((u_input.e.zx & global2[_wgslsmith_index_u32(u_input.b, 29u)]) | ~vec2<i32>(u_input.a.x, 1i), var_0.b)) >> (~_wgslsmith_mod_u32(u_input.b, 2261u) % 32u);
    global3 = Struct_4(select(vec2<bool>(605f < _wgslsmith_f_op_f32(-191f + global4.b.b.x), global1[_wgslsmith_index_u32(u_input.b, 17u)]), vec2<bool>(global3.b, !global1[_wgslsmith_index_u32(4294967295u, 17u)]), select(select(global3.a, vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(global4.b.a.x, global0.a.x)), global3.a, true)), _wgslsmith_add_u32(21801u, min(0u, 13151u) ^ _wgslsmith_sub_u32(u_input.b, u_input.b)) <= max(~u_input.b, u_input.b));
    var var_3 = _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(~_wgslsmith_dot_vec4_i32(abs(u_input.c), ~u_input.a), firstTrailingBit(firstLeadingBit(~var_0.b.x)), -firstLeadingBit(global4.a.x), ~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(var_0.a.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(512f, -1000f), func_5(Struct_1(global0.a, var_1.b, 575f), 1u, Struct_3(global4.b.b.zww, vec2<i32>(0i, global4.a.x)), -17725i).a.x)), vec2<bool>(!global1[_wgslsmith_index_u32(max(37809u, 137634u), 17u)], true))), -965f, vec4<f32>(func_1().a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c - 1018f))), _wgslsmith_f_op_f32(-global4.b.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)), -890f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global4.b.b.yyx, _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1728f, -1035f), global4.b.b.xzx), global4.a.x >= var_3.x)))), countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 23603u, u_input.b), ~vec4<u32>(38006u, u_input.b, 38425u, u_input.b)), min(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) | select(vec4<u32>(3812u, u_input.b, 4294967295u, 0u), vec4<u32>(u_input.b, 40616u, 4294967295u, u_input.b), true))));
}

