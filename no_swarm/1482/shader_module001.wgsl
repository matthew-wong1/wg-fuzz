struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<f32>;

var<private> global2: Struct_1;

var<private> global3: vec4<f32> = vec4<f32>(-1000f, -142f, 238f, -2561f);

var<private> global4: i32 = 8119i;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = global3.x;
    let var_1 = Struct_2(any(vec4<bool>(any(select(vec4<bool>(global2.a.x, arg_0.a.x, arg_0.a.x, false), vec4<bool>(false, global2.a.x, global2.a.x, global2.a.x), arg_0.a.x)), !all(arg_0.a), all(!vec3<bool>(arg_0.a.x, arg_0.a.x, false)), 4294967295u < ~u_input.c)), arg_0, arg_0);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1745f, global1.x, !global2.a.x)) + -1448f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1900f))) + _wgslsmith_f_op_f32(f32(-1f) * -806f)))));
    var var_2 = vec3<i32>(firstLeadingBit(-11829i), i32(-1i) * -3734i, var_1.c.e);
    global4 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(max(firstTrailingBit(global2.d.x), i32(-1i) * -2147483647i), arg_0.d.x), vec2<i32>(max(firstTrailingBit(global2.d.x), ~global2.c.x), min(var_1.b.e, 9605i))), vec2<i32>(abs(~(-arg_0.c.x)), _wgslsmith_dot_vec4_i32(-var_1.c.c, -(~var_1.c.c))));
    return global3.x;
}

fn func_2() -> Struct_1 {
    global0 = global2.b.x;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(110f)), 804f, _wgslsmith_f_op_f32(func_3(Struct_1(!global2.a, ~_wgslsmith_mod_vec2_u32(global2.b, global2.b), ~vec4<i32>(u_input.a, global2.d.x, u_input.a, u_input.d), global2.c.zw, (u_input.a | -80559i) | u_input.e))));
    let var_1 = !all(global2.a);
    global4 = _wgslsmith_div_i32(global2.c.x, select(-(~(-12960i)), global2.e, !var_1));
    let var_2 = false;
    return Struct_1(!vec2<bool>(select(global1.x != 348f, global2.a.x & true, !global2.a.x), var_1), ~(~(~global2.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(-69216i), abs(-15698i), _wgslsmith_dot_vec3_i32(global2.c.wwx, global2.c.yxz), u_input.a ^ global2.e), select(global2.c, global2.c, vec4<bool>(var_1, var_1, false, global2.a.x)) | ~global2.c) ^ vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(44547i, u_input.a, global2.d.x, -16949i), global2.c), ~(~(-61059i)), global2.c.x, 0i), vec2<i32>(abs(-3314i), -13481i >> (_wgslsmith_add_u32(u_input.c, u_input.c) % 32u)), ~_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.x, global2.c.x, u_input.d), ~vec3<i32>(u_input.e, -9343i, 22757i))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2((_wgslsmith_f_op_f32(-187f + global1.x) == global3.x) != true, func_2(), func_2());
    global1 = global3.xx;
    let var_1 = ~firstTrailingBit(~(vec4<i32>(-1i) * -global2.c));
    global2 = Struct_1(var_0.b.a, func_2().b, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(global2.d, vec2<i32>(-33076i, u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), u_input.b), 1i >> (var_0.c.b.x % 32u), 0i >> (1u % 32u)) >> ((~vec4<u32>(u_input.c, 39559u, 11966u, 1u) >> (firstLeadingBit(vec4<u32>(var_0.c.b.x, 4294967295u, var_0.c.b.x, global2.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), (abs(var_1) << ((vec4<u32>(u_input.c, u_input.c, 13668u, 1u) >> (vec4<u32>(var_0.c.b.x, 0u, 1u, global2.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (~(~vec4<u32>(0u, var_0.c.b.x, var_0.b.b.x, 51097u)) % vec4<u32>(32u)), var_0.b.c), vec2<i32>(-1i) * -(vec2<i32>(51773i, var_1.x) >> (vec2<u32>(4294967295u, 18147u) % vec2<u32>(32u))), var_0.c.d.x);
    var var_2 = u_input.b.x;
    return var_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> bool {
    let var_0 = 531f;
    var var_1 = arg_1;
    var var_2 = any(arg_1.a);
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1542f, _wgslsmith_f_op_f32(-513f + _wgslsmith_f_op_f32(func_3(arg_1))), 317f, var_0) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(ceil(1035f)), _wgslsmith_div_f32(global3.x, global3.x), global1.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(699f, -834f, var_0, global1.x))))));
    global0 = _wgslsmith_div_u32(~0u, 22140u) | arg_1.b.x;
    return !(arg_1.a.x & true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(vec2<bool>(func_4(Struct_2(false, Struct_1(vec2<bool>(true, false), global2.b, global2.c, global2.d, u_input.a), func_1()), Struct_1(select(global2.a, global2.a, false), vec2<u32>(0u, 9104u) & global2.b, ~global2.c, -global2.d, -42493i), global2.b.x, vec4<i32>(global2.c.x, global2.c.x, i32(-1i) * -2147483647i, -1i)), true), ~(~((vec2<u32>(u_input.c, 9793u) >> (global2.b % vec2<u32>(32u))) ^ vec2<u32>(4294967295u, 9100u))), vec4<i32>(_wgslsmith_mult_i32(global2.c.x, 1i) >> (_wgslsmith_div_u32(0u, global2.b.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a ^ -10985i, abs(-2147483647i)), -(~(-21549i))), u_input.e, i32(-1i) * -func_2().c.x), vec2<i32>(global2.e, ~(-abs(90788i))), 33373i);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3.xw)));
    let var_0 = max(23938i, _wgslsmith_add_i32(~(i32(-1i) * -global2.c.x), -global2.d.x));
    var var_1 = global3.yxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-164f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.yy, vec2<f32>(-2123f, 104f), vec2<bool>(true, global2.a.x))) + _wgslsmith_div_vec2_f32(var_1.zy, vec2<f32>(-233f, 459f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))), _wgslsmith_div_vec2_i32(u_input.b, countOneBits(vec2<i32>(-var_0, var_0 << (4294967295u % 32u)))), ~(~vec2<u32>(u_input.c, 22883u)) ^ vec2<u32>(1u, _wgslsmith_add_u32(abs(1u), u_input.c)));
}

