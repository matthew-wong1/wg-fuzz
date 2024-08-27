struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: i32 = 7895i;

var<private> global1: Struct_5 = Struct_5(Struct_1(462f, vec4<f32>(1067f, 235f, 104f, -190f)), true, Struct_4(vec4<u32>(4294967295u, 0u, 67778u, 9859u), Struct_1(-438f, vec4<f32>(-2281f, -926f, 1000f, -363f)), vec3<i32>(2147483647i, 0i, 15068i)));

var<private> global2: vec4<f32> = vec4<f32>(-1357f, 1507f, 996f, 1367f);

var<private> global3: f32 = 964f;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> bool {
    var var_0 = !select(!vec3<bool>(any(vec2<bool>(false, false)), true, global1.b), vec3<bool>(false, global4.x, select(true, true, global1.b)), true);
    let var_1 = Struct_2(arg_1.b, global1.c.b, u_input.c.xyw, arg_1.b);
    global1 = Struct_5(var_1.d, true, global1.c);
    let var_2 = Struct_3(arg_0, Struct_2(Struct_1(arg_0.d.b.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(564f, 843f, -635f, global1.c.b.a), _wgslsmith_f_op_vec4_f32(-global1.c.b.b), vec4<bool>(false, true, global1.b, false)))), arg_1.b, firstLeadingBit(arg_0.c), Struct_1(global2.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1641f, var_1.b.b.x, global1.c.b.b.x, 530f))), var_1.b.b, select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(global4.x, global4.x, false, false), vec4<bool>(false, false, global1.b, true)))))));
    let var_3 = var_2;
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_5(global1.a, !(!(_wgslsmith_add_i32(arg_0.x, -16055i) != 0i)), Struct_4(_wgslsmith_add_vec4_u32(global1.c.a, vec4<u32>(13278u, ~0u, 0u | global1.c.a.x, 65174u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.a))), vec4<f32>(_wgslsmith_f_op_f32(289f + 714f), _wgslsmith_f_op_f32(select(466f, global2.x, global4.x)), arg_1.a.a, _wgslsmith_f_op_f32(-global2.x))), vec3<i32>(u_input.d, arg_1.c.x << ((global1.c.a.x >> (4294967295u % 32u)) % 32u), abs(firstLeadingBit(2147483647i)))));
    global3 = var_0.a.a;
    var var_1 = Struct_3(Struct_2(global1.a, Struct_1(-1011f, vec4<f32>(-799f, _wgslsmith_div_f32(global1.a.a, 213f), -725f, _wgslsmith_f_op_f32(-var_0.c.b.a))), arg_1.c & arg_0, var_0.a), Struct_2(global1.a, Struct_1(_wgslsmith_f_op_f32(arg_1.b.a + _wgslsmith_f_op_f32(select(global1.c.b.a, global1.c.b.b.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-325f, 1000f, 221f, arg_1.d.a) - vec4<f32>(global1.a.b.x, arg_1.b.a, 620f, -1000f)))), ~vec3<i32>(var_0.c.c.x, select(u_input.c.x, arg_0.x, true), -54155i), arg_1.d));
    let var_2 = select(~global1.c.a, ~max((vec4<u32>(1u, global1.c.a.x, u_input.a, 0u) ^ global1.c.a) << (vec4<u32>(1u, 0u, 31558u, 60581u) % vec4<u32>(32u)), abs(reverseBits(var_0.c.a))), (4294967295u != _wgslsmith_add_u32(reverseBits(u_input.b), ~0u)) | ((_wgslsmith_div_u32(0u, u_input.b) <= ~u_input.b) | (-arg_0.x <= (var_1.a.c.x << (var_0.c.a.x % 32u)))));
    let var_3 = arg_1.d.b.x;
    return select(select(vec4<bool>(var_0.b, true, global4.x, global1.b), !vec4<bool>(func_3(Struct_2(Struct_1(-411f, vec4<f32>(var_0.a.b.x, global2.x, -148f, var_1.a.a.b.x)), Struct_1(-469f, vec4<f32>(1433f, global2.x, global1.c.b.b.x, global1.a.b.x)), vec3<i32>(-1i, 39769i, -1i), global1.a), Struct_4(global1.c.a, var_0.a, vec3<i32>(-20668i, u_input.c.x, -6456i))), true, true, !global4.x), !global4.x || all(select(vec4<bool>(global1.b, true, global1.b, false), vec4<bool>(false, false, false, true), vec4<bool>(global1.b, false, global4.x, global1.b)))), select(select(vec4<bool>(!global1.b, var_0.b && global4.x, true, var_1.a.d.b.x != -925f), vec4<bool>(true, true, true && global1.b, any(vec4<bool>(false, false, global4.x, false))), global4.x), vec4<bool>(all(vec3<bool>(global4.x, var_0.b, false)), false, !(!global4.x), false), select(vec4<bool>(func_3(Struct_2(Struct_1(2223f, arg_1.a.b), arg_1.a, vec3<i32>(-21155i, arg_1.c.x, -1i), Struct_1(var_3, vec4<f32>(1015f, 1587f, var_3, 2123f))), var_0.c), true, true, global4.x), vec4<bool>(all(vec2<bool>(true, global1.b)), !global1.b, false, !var_0.b), select(vec4<bool>(global1.b, var_0.b, false, true), !vec4<bool>(true, global1.b, var_0.b, var_0.b), true))), select(select(select(!vec4<bool>(global1.b, global4.x, var_0.b, var_0.b), !vec4<bool>(false, global1.b, global4.x, true), global1.b && global4.x), !select(vec4<bool>(false, var_0.b, false, true), vec4<bool>(true, global4.x, true, false), vec4<bool>(true, false, true, false)), select(!vec4<bool>(global1.b, global1.b, true, true), !vec4<bool>(false, true, false, global1.b), true)), vec4<bool>(!global1.b, any(vec2<bool>(global1.b, var_0.b)) && global4.x, global4.x, (arg_1.c.x >= var_0.c.c.x) | !var_0.b), vec4<bool>(var_0.b, -1345f != _wgslsmith_f_op_f32(-arg_1.d.b.x), firstLeadingBit(global1.c.a.x) >= var_2.x, !(!global1.b))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: i32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(floor(arg_1.x))) * global2.x))));
    var var_1 = vec2<u32>(~countOneBits(global1.c.a.x), 2272u);
    let var_2 = 616f;
    var var_3 = _wgslsmith_f_op_f32(abs(global2.x));
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))) + -2192f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(238f, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -570f)), arg_0.b.x));
    return Struct_5(global1.c.b, true, Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(14642u, u_input.b, countOneBits(0u), u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(4391u, global1.c.a.x, u_input.b, 14172u), reverseBits(global1.c.a))), Struct_1(_wgslsmith_f_op_f32(-global2.x), vec4<f32>(_wgslsmith_f_op_f32(min(-563f, var_2)), arg_0.b.x, 1243f, arg_0.b.x)), _wgslsmith_mult_vec3_i32(~vec3<i32>(arg_3, global1.c.c.x, u_input.c.x), abs(global1.c.c))));
}

fn func_1() -> Struct_5 {
    return func_4(Struct_1(_wgslsmith_f_op_f32(-global1.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global1.a.b.x)), 1492f, -1883f, -1051f))), vec4<f32>(global2.x, global1.a.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(863f * global2.x)))), global1.c.b.b.x), select(select(vec4<bool>(true, all(vec4<bool>(global1.b, true, global1.b, global1.b)), global1.b, !global4.x), select(func_2(global1.c.c, Struct_2(global1.a, Struct_1(-489f, vec4<f32>(global1.a.b.x, global1.c.b.b.x, -145f, -518f)), vec3<i32>(-27704i, -2147483647i, -2147483647i), global1.c.b)), !vec4<bool>(false, global1.b, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, global4.x, global1.b), vec4<bool>(true, false, false, false))), any(vec3<bool>(true, global1.b, true))), !select(vec4<bool>(false, global4.x, global1.b, false), !vec4<bool>(global4.x, true, global4.x, global1.b), func_2(u_input.c.yxw, Struct_2(Struct_1(global1.a.b.x, vec4<f32>(global2.x, -130f, -1192f, -439f)), Struct_1(-189f, vec4<f32>(global2.x, -888f, -403f, -819f)), vec3<i32>(u_input.c.x, 2147483647i, 2147483647i), global1.c.b))), vec4<bool>(!global4.x, true, global4.x && (global4.x && global1.b), true)), global1.c.c.x | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-49510i, 38930i, -51761i, u_input.d), _wgslsmith_mult_vec4_i32(u_input.c, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.c.b, Struct_1(865f, vec4<f32>(_wgslsmith_f_op_f32(abs(-654f)), global1.c.b.b.x, 262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f - global2.x)))), vec3<i32>(min(global1.c.c.x, ~abs(u_input.c.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global1.c.c.x, -1i), firstTrailingBit(u_input.c.yx)), 1i), global1.a);
    global1 = func_1();
    var var_1 = func_1();
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec4_f32(max(var_1.c.b.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, -347f, var_0.b.b.x, global1.a.b.x))))), Struct_1(var_1.c.b.a, var_0.a.b), (min(global1.c.c, var_0.c) ^ -vec3<i32>(1i, 2147483647i, var_0.c.x)) & abs(u_input.c.yyz), Struct_1(global1.a.a, var_1.a.b)), Struct_2(func_4(var_0.d, _wgslsmith_f_op_vec4_f32(round(global1.a.b)), select(select(vec4<bool>(true, true, var_1.b, var_1.b), vec4<bool>(true, true, true, false), false), vec4<bool>(true, global4.x, var_1.b, global4.x), select(vec4<bool>(true, true, false, global1.b), vec4<bool>(false, var_1.b, var_1.b, global4.x), vec4<bool>(true, false, true, var_1.b))), 2147483647i).a, func_1().a, ~firstTrailingBit(firstTrailingBit(vec3<i32>(-40514i, -57072i, var_1.c.c.x))), func_1().c.b));
    var_0 = var_2.b;
    let var_3 = var_2;
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

