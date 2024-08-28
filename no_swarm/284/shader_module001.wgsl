struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(242f, 596f, -1860f, 1000f);

var<private> global1: vec4<i32> = vec4<i32>(1i, -1i, -43287i, 2147483647i);

var<private> global2: array<i32, 31>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(1u, 103135u, 4294967295u));

var<private> global4: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: vec4<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, global4.e))), _wgslsmith_f_op_f32(max(3060f, arg_2.e.a.e)), -1839f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_3.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-345f, 703f, arg_2.e.d, arg_3.x), arg_3))) * arg_3) * vec4<f32>(global4.e, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d.e, 1000f)), arg_3.x)));
    var var_0 = Struct_2(~(~abs(vec3<u32>(21034u, global4.c.a.x, 15609u))), !arg_2.d.b, Struct_1(global3.a), Struct_1(u_input.b), global4.e);
    var var_1 = Struct_4(Struct_3(arg_2.d, Struct_1(vec3<u32>(var_0.a.x, _wgslsmith_add_u32(85725u, global4.d.a.x), ~u_input.d)), -min(1i, -arg_2.e.c), 203f, arg_2.e.b), arg_2.e.a, vec3<i32>(~(~(-27863i)), u_input.c.x, firstTrailingBit(arg_2.a.c)), arg_2.b, arg_2.a);
    var var_2 = arg_2.e.a;
    var var_3 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(select(countOneBits(vec4<u32>(var_1.e.a.d.a.x, arg_0, arg_0, var_2.d.a.x)), countOneBits(vec4<u32>(1u, global4.d.a.x, arg_2.a.b.a.x, 4294967295u)), all(vec2<bool>(var_2.b.x, arg_2.b.b.x))), min(select(vec4<u32>(arg_2.b.a.x, 1u, var_2.a.x, 22404u), vec4<u32>(var_1.b.c.a.x, global3.a.x, 0u, 29190u), vec4<bool>(false, false, var_2.b.x, true)), select(vec4<u32>(var_2.d.a.x, global3.a.x, 20566u, 4294967295u), vec4<u32>(79145u, 4294967295u, 37842u, var_1.b.a.x), var_2.b.x))), ~(abs(vec4<u32>(0u, arg_2.e.a.a.x, var_0.d.a.x, arg_2.e.b.a.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 55386u, global3.a.x, 1u), ~vec4<u32>(arg_0, 4617u, 0u, 1u))));
    return 50502u;
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<u32>(min(~global3.a.x, func_3(_wgslsmith_add_u32(17150u, u_input.a.x), global4.b.x, Struct_4(Struct_3(Struct_2(vec3<u32>(64781u, global4.d.a.x, global3.a.x), global4.b, Struct_1(global3.a), Struct_1(vec3<u32>(global3.a.x, 1u, 49542u)), 667f), Struct_1(vec3<u32>(global4.c.a.x, global3.a.x, 46100u)), global1.x, -942f, global4.c), Struct_2(u_input.b, global4.b, global4.d, global4.d, -655f), global1.yww, Struct_2(u_input.b, vec3<bool>(false, global4.b.x, false), Struct_1(vec3<u32>(global4.c.a.x, u_input.a.x, 0u)), Struct_1(global3.a), -1330f), Struct_3(Struct_2(global3.a, global4.b, global4.c, global4.c, -637f), global4.c, u_input.c.x, 114f, global4.c)), vec4<f32>(-243f, 2881f, -1000f, 222f))) << (reverseBits(~0u >> (~global4.c.a.x % 32u)) % 32u), global3.a.x, global4.a.x, 0u);
    global4 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(global4.a.x, 24556u), _wgslsmith_mult_u32(1u, 96509u >> (global3.a.x % 32u)), 32052u), select(global4.b, vec3<bool>(true, select(any(global4.b.zy), global4.b.x, global4.b.x), global4.b.x), global4.b.x), global4.c, Struct_1(_wgslsmith_add_vec3_u32(~(~u_input.b), vec3<u32>(global3.a.x, 4806u, u_input.d & 0u))), _wgslsmith_f_op_f32(global4.e * 344f));
    let var_1 = Struct_2(~(~_wgslsmith_add_vec3_u32(global4.c.a, var_0.yxy)), vec3<bool>(1i >= u_input.c.x, global4.b.x, !(!(!global4.b.x))), Struct_1(vec3<u32>(global4.d.a.x, 1u, global4.c.a.x)), Struct_1(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1280f)), global4.e)))));
    let var_2 = Struct_3(var_1, Struct_1(select(~vec3<u32>(global4.d.a.x, global3.a.x, 1u), ~global4.d.a, global4.d.a.x != firstTrailingBit(1u))), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.e, var_1.e, var_1.b.x)) - _wgslsmith_f_op_f32(abs(-272f)))), 621f), Struct_1(global4.d.a));
    global1 = firstTrailingBit(min(firstTrailingBit(firstTrailingBit(vec4<i32>(-63095i, var_2.c, var_2.c, -26367i) << (vec4<u32>(u_input.d, var_1.c.a.x, 0u, var_2.b.a.x) % vec4<u32>(32u)))), -vec4<i32>(1i, ~global2[_wgslsmith_index_u32(9282u, 31u)], ~global2[_wgslsmith_index_u32(4294967295u, 31u)], var_2.c)));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_2) -> bool {
    global3 = arg_3.d;
    let var_0 = arg_0;
    let var_1 = ~_wgslsmith_add_u32(~arg_2.x, ~arg_3.a.x >> (1u % 32u)) ^ ~arg_1.b.a.x;
    var var_2 = global2[_wgslsmith_index_u32(~(~80749u), 31u)];
    let var_3 = select(vec4<u32>(~(_wgslsmith_add_u32(u_input.b.x, global3.a.x) | (arg_0.e.a.x >> (0u % 32u))), ~_wgslsmith_clamp_u32(u_input.a.x, 26486u, 0u) ^ arg_1.d.d.a.x, _wgslsmith_clamp_u32(1u, reverseBits(1u), 5808u), firstLeadingBit(_wgslsmith_div_u32(firstTrailingBit(arg_0.b.a.x), arg_0.a.a.x))), select(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 33684u, arg_3.c.a.x, var_0.e.a.x), vec4<u32>(arg_1.e.a.d.a.x, 0u, arg_2.x, 32285u))), vec4<u32>(reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3.a.x, 5257u), abs(arg_2.yz)), 16400u, firstLeadingBit(arg_2.x)), true), true);
    return true;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = func_4(func_2(), Struct_4(Struct_3(func_2().a, func_2().a.d, 0i, _wgslsmith_f_op_f32(-global4.e), Struct_1(global4.c.a)), func_2().a, select(~vec3<i32>(u_input.c.x, global1.x, 26303i) << (vec3<u32>(21786u, global3.a.x, 27687u) % vec3<u32>(32u)), global1.zwx, true || global4.b.x), func_2().a, func_2()), _wgslsmith_div_vec3_u32(~arg_0.a, vec3<u32>(arg_0.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a.x, u_input.d, arg_0.a.x, 29286u), firstLeadingBit(vec4<u32>(4294967295u, 0u, u_input.b.x, arg_0.a.x))), global4.c.a.x)), func_2().a);
    let var_1 = Struct_4(func_2(), func_2().a, _wgslsmith_mult_vec3_i32(global1.yyy, abs(vec3<i32>(global1.x >> (47583u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], global1.x, u_input.c.x), vec4<i32>(22076i, global1.x, global2[_wgslsmith_index_u32(global3.a.x, 31u)], 2147483647i)), global2[_wgslsmith_index_u32(global4.c.a.x, 31u)]))), func_2().a, Struct_3(Struct_2(abs(_wgslsmith_mod_vec3_u32(u_input.b, global4.a)), global4.b, Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(global4.a.x, u_input.b.x, 0u), vec3<u32>(26880u, global3.a.x, global4.c.a.x))), arg_0, global4.e), Struct_1(u_input.b), ~abs(1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1199f))), global0.x)), func_2().b));
    var var_2 = Struct_4(Struct_3(var_1.a.a, Struct_1(~(~vec3<u32>(var_1.b.a.x, var_1.a.b.a.x, var_1.a.a.a.x))), reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.d.d.a.x, global4.a.x), 31u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))), func_2().b), Struct_2(~u_input.b, func_2().a.b, Struct_1(global4.c.a), func_2().a.c, var_1.d.e), ~reverseBits(global1.xwz), func_2().a, var_1.a);
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(var_2.a.a.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), global0.x), 1477f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + _wgslsmith_f_op_f32(step(410f, _wgslsmith_f_op_f32(floor(656f))))))));
    var_0 = all(global4.b);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(global4.c), Struct_2(vec3<u32>(firstLeadingBit(abs(global3.a.x)), ~global4.a.x, abs(84928u)), select(global4.b, global4.b, !global4.b.x), global4.d, global4.c, _wgslsmith_f_op_f32(952f + global0.x)), min(-vec3<i32>(0i, -2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.a), 31u)]), _wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(global1.ywz, global1.ywz)), vec3<i32>(-global1.x, max(u_input.c.x, 0i), ~global2[_wgslsmith_index_u32(u_input.a.x, 31u)]))), Struct_2(vec3<u32>(firstTrailingBit(0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, 0u), vec2<u32>(12492u, global3.a.x)), abs(~global4.d.a.x)), !(!vec3<bool>(true, false, global4.b.x)), global4.d, Struct_1(func_2().a.d.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.e * -485f)) - -1000f)), func_2());
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 31u)];
    global0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-505f, func_1(func_1(var_0.a.e).b).a.e)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.d + 980f), _wgslsmith_f_op_f32(1000f - var_0.d.e))), _wgslsmith_f_op_f32(-1000f + -581f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.e) + -697f) * _wgslsmith_div_f32(316f, 1014f)));
    var var_2 = var_0.d;
    let var_3 = func_2().e;
    let x = u_input.a;
    s_output = StorageBuffer(21702u, global0.x);
}

