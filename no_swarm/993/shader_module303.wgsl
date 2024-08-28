struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u));

var<private> global3: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(513f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1276f)), 407f), 530f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.a)) + global0.a.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) * _wgslsmith_f_op_f32(sign(-655f)))))));
    var var_1 = Struct_3(Struct_2(798f, global0.a.b, Struct_1(_wgslsmith_mod_vec3_u32(arg_1.a, global2.a << (vec3<u32>(85254u, 4294967295u, global2.a.x) % vec3<u32>(32u)))), Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(global2.a.x, 67574u, 79019u), reverseBits(vec3<u32>(global2.a.x, global0.a.c.a.x, global2.a.x)))), global0.a.c));
    let var_2 = ~(-2147483647i);
    var_0 = vec4<f32>(var_0.x, global0.a.a, global0.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.a.a)))))))));
    let var_3 = any(vec4<bool>((var_1.a.a < _wgslsmith_f_op_f32(abs(var_0.x))) || select(true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)), false));
    return 0i;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global3 = 4294967295u;
    let var_0 = global0.a;
    global3 = _wgslsmith_mod_u32(0u, 8654u);
    let var_1 = Struct_3(global0.a);
    var var_2 = _wgslsmith_add_i32(1i, ~5918i & _wgslsmith_clamp_i32(func_3(Struct_1(vec3<u32>(global0.a.c.a.x, 1343u, 107184u)), Struct_1(vec3<u32>(50412u, global0.a.e.a.x, 1u)), global0.a.b.x & -26202i), 1i, abs(_wgslsmith_div_i32(u_input.c, u_input.c))));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(global0.a.b.x, 12364i, _wgslsmith_sub_i32(3244i, u_input.a)), vec3<i32>(1750i, 9127i, (-16549i ^ u_input.a) & 39515i)), vec3<i32>(~u_input.a, arg_2.a.b.x, -global0.a.b.x));
    var var_1 = Struct_3(Struct_2(-1187f, global0.a.b, Struct_1(abs(select(arg_2.a.e.a, vec3<u32>(global0.a.e.a.x, 0u, 56725u), false))), func_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-5874i, u_input.c, 0i, arg_2.a.b.x), vec4<i32>(-453i, u_input.c, var_0.x, -24243i)), vec4<i32>(-1i, global0.a.b.x, 0i, -2147483647i) >> (vec4<u32>(51485u, u_input.b, global2.a.x, 9948u) % vec4<u32>(32u)))).a.d, func_2(var_0.x >> (79521u % 32u)).a.e));
    var var_2 = var_1.a;
    var var_3 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(abs(4294967295u), arg_2.a.c.a.x, abs(select(var_1.a.e.a.x, arg_2.a.d.a.x, false)), var_1.a.c.a.x), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(arg_2.a.c.a.x, var_2.e.a.x, 1u, 36652u)) >> (vec4<u32>(arg_2.a.d.a.x, var_2.d.a.x, 4294967295u, 52700u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, global0.a.e.a.x, 21620u, arg_2.a.d.a.x) ^ ~vec4<u32>(57081u, global0.a.d.a.x, arg_2.a.e.a.x, global2.a.x)));
    global3 = ~(~(~(u_input.b | 1u)));
    return arg_1.yxw;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = vec2<i32>(13397i, -u_input.c);
    var var_1 = _wgslsmith_mult_u32(1u, ~45022u);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_4(650f, vec4<f32>(-1295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -1280f, _wgslsmith_f_op_f32(f32(-1f) * -444f)), func_2(1i)))));
    let var_3 = func_2(var_0.x << (4294967295u % 32u)).a.d;
    return func_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(42045i, _wgslsmith_div_i32(global0.a.b.x, u_input.a), 21183i), ~(~vec3<i32>(-60248i, 32369i, 2147483647i))), var_0.x)).a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(global0.a.a, ~(~global0.a.b), global0.a.e, func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-657f, global0.a.a, global0.a.a, 427f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-102f, -1414f, global0.a.a, global0.a.a))), vec4<bool>(true, false, true, false))), vec4<f32>(650f, -120f, _wgslsmith_f_op_f32(global0.a.a - -910f), _wgslsmith_f_op_f32(max(global0.a.a, global0.a.a)))), func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(549f, global0.a.a, global0.a.a, global0.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global0.a.a, global0.a.a, global0.a.a)), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global0.a.a, 1355f, global0.a.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 851f, 444f, -202f) - vec4<f32>(527f, 965f, -348f, 986f))))));
    var var_1 = select(vec3<bool>((-47958i > u_input.c) != false, false & all(vec3<bool>(true, true, true)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), min(0i, 33001i) == func_2(0i).a.b.x, (1u | u_input.b) > ~0u));
    var var_2 = var_0.a.c.a.x;
    var_2 = ~(~max(~51959u, ~48219u));
    var var_3 = firstTrailingBit(u_input.b);
    var_0 = func_2(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(var_0.a.b >> (var_0.a.d.a.xz % vec2<u32>(32u)), select(vec2<i32>(var_0.a.b.x, global0.a.b.x), vec2<i32>(1i, global0.a.b.x), var_1.zx))), vec2<i32>(-global0.a.b.x, max(u_input.c, -2147483647i)) << (var_0.a.d.a.yx % vec2<u32>(32u))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a.a, 746f), _wgslsmith_f_op_f32(-global0.a.a), all(vec4<bool>(var_1.x, false, true, var_1.x))))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1238f, -132f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.a, -302f))))))));
    let var_5 = global2.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_div_vec2_u32(global2.a.xz, firstLeadingBit(global2.a.xy)), ~func_1(vec4<f32>(global0.a.a, global0.a.a, 1055f, -2258f), vec4<f32>(var_4.x, 726f, global0.a.a, var_4.x)).a.zz, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.a))))), max(_wgslsmith_mod_i32(-46883i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 22421i, -1i), vec4<i32>(var_0.a.b.x, 2147483647i, global0.a.b.x, var_0.a.b.x)))), _wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(u_input.a, -2147483647i), ~(~(-4566i)))));
}

