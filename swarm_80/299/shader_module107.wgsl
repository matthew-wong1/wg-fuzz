struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 32>;

var<private> global2: u32;

var<private> global3: vec4<i32> = vec4<i32>(72035i, i32(-2147483648), -2321i, 21916i);

var<private> global4: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_3, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_4(arg_2.e, Struct_1(arg_2.c.xz), arg_2, ~(arg_0.a.x ^ 1u));
    let var_1 = 43609u;
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~global4.d, global1[_wgslsmith_index_u32(var_0.c.a, 32u)] & 4294967295u), ~1u), _wgslsmith_div_u32(~var_0.c.a, ~4294967295u)), 32u)], 4294967295u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-110f, var_0.a.d, 358f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-108f, var_0.b.a.x, 315f)), var_0.c.e.c.xwy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global4.c.c)), _wgslsmith_f_op_vec3_f32(floor(global0.yzx))), select(arg_2.e.c.zww, !global4.c.e.c.yxx, !var_0.a.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global4.b.a.x + -1000f), -611f, _wgslsmith_f_op_f32(arg_2.c.x - var_0.b.a.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1710f, -425f, -118f))), _wgslsmith_f_op_vec3_f32(-var_0.c.c))))), _wgslsmith_f_op_f32(var_0.a.b.a.x + 2101f), var_0.a);
    var var_3 = -1i;
    return true;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_4 {
    let var_0 = select(57856i, -_wgslsmith_sub_i32(global3.x, -31598i << (~u_input.a % 32u)), func_3(Struct_5(vec3<u32>(~34579u, global1[_wgslsmith_index_u32(~1u, 32u)], global4.c.a & global4.d), arg_2.a.x), u_input.a ^ countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)] << (global1[_wgslsmith_index_u32(u_input.a, 32u)] % 32u)), global4.c, u_input.b));
    return Struct_4(global4.c.e, Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global4.c.c.zy * global0.zw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.a.b.a + vec2<f32>(564f, -1000f)))))), Struct_3(~(~u_input.a), global4.c.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(global4.c.c)))) - global0.yzz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - global0.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.x * -1542f), -969f))), global4.c.e), ~(~24217u));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> vec3<u32> {
    global4 = func_2(global4.c.e.c.x, global4.c.e.c.x, global4.c.e.b);
    let var_0 = abs(~vec3<u32>(~u_input.a, reverseBits(select(4294967295u, 54209u, global4.c.e.c.x)), global4.d));
    global4 = Struct_4(Struct_2(global0.x, Struct_1(global4.a.b.a), !global4.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.b.a.x - -1708f), _wgslsmith_f_op_f32(step(2073f, global0.x)))))), Struct_1(global4.a.b.a), func_2(true, (_wgslsmith_div_u32(var_0.x, 3301u) != 1u) & true, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global4.a.a), global4.c.e.d))).c, func_2(all(vec4<bool>(global4.a.c.x | global4.c.e.c.x, true || global4.c.e.c.x, true, true)), global4.c.e.c.x, func_2(any(func_2(false, true, global4.c.e.b).c.e.c.ywz), true, func_2(true, true, func_2(false, global4.c.e.c.x, Struct_1(global0.xx)).b).c.e.b).a.b).d);
    global3 = abs(-vec4<i32>(-1i, _wgslsmith_clamp_i32(-1i, -22385i, 2147483647i) & _wgslsmith_div_i32(global3.x, u_input.b.x), select(-51855i, 1i, all(vec4<bool>(true, global4.c.e.c.x, false, global4.a.c.x))), global3.x));
    global2 = firstTrailingBit(~(global1[_wgslsmith_index_u32(~(~0u), 32u)] & ~(~var_0.x)));
    return vec3<u32>(min(arg_1, _wgslsmith_sub_u32(~(~113489u), 0u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(~(~71520u), global4.c.a), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(5708u, 1u, global1[_wgslsmith_index_u32(1u, 32u)])), vec3<u32>(1u, arg_0.x, 0u) << ((arg_0.zzw & vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 32u)], 24532u)) % vec3<u32>(32u)))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.e.b.a.x + -1004f))))));
    var var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(global4.c.b, 0u, 0u)) & ~vec3<u32>(global4.c.a, 0u, 0u), ~min(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)]), vec3<u32>(1u, 0u, 13778u))), _wgslsmith_sub_vec3_u32(~((vec3<u32>(3996u, 0u, global4.c.b) ^ vec3<u32>(global4.d, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 32u)], 32u)])) >> (func_1(vec4<u32>(global1[_wgslsmith_index_u32(0u, 32u)], u_input.a, u_input.a, 12190u), u_input.a) % vec3<u32>(32u))), vec3<u32>(~global4.d, global4.c.b, 0u)));
    global3 = vec4<i32>(11299i, (-15199i >> (min(1u, func_2(global4.c.e.c.x, false, global4.c.e.b).d) % 32u)) ^ global3.x, -1i, global3.x);
    let var_2 = -1421f;
    global4 = Struct_4(func_2(!func_2(true, all(global4.a.c.wxy), func_2(false, true, Struct_1(vec2<f32>(global0.x, global0.x))).a.b).c.e.c.x, (_wgslsmith_f_op_f32(max(global4.c.e.d, -326f)) != _wgslsmith_f_op_f32(step(global4.a.d, -1183f))) == true, func_2(false, global4.c.e.c.x, global4.b).a.b).a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -533f))))), Struct_3(countOneBits(~_wgslsmith_clamp_u32(0u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40812u, 32u)], 32u)])), _wgslsmith_sub_u32(firstLeadingBit(reverseBits(42550u)), global4.d), global0.zwy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.b.a.x, func_2(global4.c.e.c.x, global4.a.c.x, Struct_1(global4.c.c.yz)).a.a, true))), func_2(!(u_input.b.x < -2147483647i), _wgslsmith_f_op_f32(step(-1000f, var_0)) < -823f, func_2(all(vec4<bool>(false, false, false, global4.c.e.c.x)), false, Struct_1(vec2<f32>(-1528f, global0.x))).c.e.b).a), abs(global4.c.a));
    let var_3 = !(!(!global4.c.e.c));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), func_2(false, !any(var_3), Struct_1(global0.xx)).c.e.d, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-816f * _wgslsmith_f_op_f32(global4.c.c.x + 825f))), -176f), func_2(var_3.x, func_3(Struct_5(vec3<u32>(1u, u_input.a, 1u), _wgslsmith_f_op_f32(f32(-1f) * -1044f)), 1u, global4.c, -(vec3<i32>(55582i, u_input.b.x, global3.x) << (vec3<u32>(80027u, u_input.a, 0u) % vec3<u32>(32u)))), global4.a.b).c.e.b.a.x);
    let var_4 = Struct_5(reverseBits(_wgslsmith_mult_vec3_u32(countOneBits(firstTrailingBit(vec3<u32>(64829u, global4.c.b, u_input.a))), vec3<u32>(1u, 0u, global1[_wgslsmith_index_u32(u_input.a, 32u)]) & vec3<u32>(global4.d, 4294967295u, u_input.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -456f))));
    let x = u_input.a;
    s_output = StorageBuffer(-553f, -1i);
}

