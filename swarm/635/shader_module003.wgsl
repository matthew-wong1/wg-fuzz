struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<u32> = vec4<u32>(95444u, 8078u, 122456u, 64873u);

var<private> global2: Struct_2;

var<private> global3: i32 = -1146i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1() -> vec4<bool> {
    return global2.c;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec4<i32> {
    global3 = 1i;
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(u_input.d.xx, _wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, 20652u)), arg_0.b.a)), select(vec4<i32>(-13283i, arg_0.b.b.x, -2147483647i & arg_1.x, -2979i), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_1.x, global2.b.b.x, 2147483647i, u_input.c), vec4<i32>(1i, arg_1.x, 63393i, global2.d.x), vec4<bool>(global2.c.x, arg_0.c.x, arg_0.c.x, false)), ~global2.a, global2.a), global2.c.x | any(vec2<bool>(global2.c.x, global2.c.x))) ^ ~firstTrailingBit(-global2.a));
    var var_1 = vec3<bool>(true, true, arg_0.c.x);
    global2 = Struct_2(-_wgslsmith_div_vec4_i32(-vec4<i32>(-38616i, -37291i, -4465i, var_0.b.x), vec4<i32>(arg_0.a.x, var_0.b.x, u_input.a.x, 2147483647i)), global2.b, vec4<bool>(arg_0.c.x, !(!var_1.x | true), !any(global2.c) | false, arg_0.c.x | (_wgslsmith_f_op_f32(round(-1561f)) == _wgslsmith_f_op_f32(-218f * -1000f))), vec3<i32>(-1i) * -(select(vec3<i32>(1i, u_input.c, arg_1.x), var_0.b.zzz, vec3<bool>(true, var_1.x, false)) & -vec3<i32>(10323i, arg_0.b.b.x, 31980i)));
    global3 = _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, var_0.b.x), countOneBits(vec3<i32>(-41740i, -15568i, 27301i)));
    return vec4<i32>(_wgslsmith_div_i32(-2147483647i, 1i), -45798i, arg_1.x, u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    let var_0 = min(~min(arg_2, ~(~arg_0.b.wzz)), ~(-(vec3<i32>(59409i, u_input.a.x, arg_0.b.x) << (reverseBits(vec3<u32>(0u, 19585u, u_input.d.x)) % vec3<u32>(32u)))));
    let var_1 = global2.b;
    let var_2 = global2.c.x;
    global3 = 1i;
    let var_3 = Struct_2(var_1.b, Struct_1((vec2<u32>(u_input.d.x, 24731u) & _wgslsmith_add_vec2_u32(vec2<u32>(global1.x, u_input.d.x), var_1.a)) ^ firstTrailingBit(~vec2<u32>(global2.b.a.x, 0u)), vec4<i32>(arg_0.b.x, countOneBits(var_1.b.x), -1i, 1i) >> (_wgslsmith_clamp_vec4_u32(max(vec4<u32>(2105u, u_input.d.x, var_1.a.x, arg_0.a.x), vec4<u32>(0u, 4294967295u, u_input.d.x, 50653u)), ~vec4<u32>(1u, 0u, 34671u, u_input.d.x), min(vec4<u32>(34977u, 8294u, var_1.a.x, 66649u), vec4<u32>(u_input.d.x, u_input.d.x, arg_0.a.x, 0u))) % vec4<u32>(32u))), vec4<bool>(global2.c.x, all(vec4<bool>(false, global2.c.x, false, global2.c.x)) || (_wgslsmith_f_op_f32(min(-722f, 387f)) != _wgslsmith_f_op_f32(round(441f))), true, false), _wgslsmith_add_vec3_i32(abs(select(firstTrailingBit(vec3<i32>(arg_2.x, global2.d.x, u_input.c)), _wgslsmith_mod_vec3_i32(global2.b.b.ywy, var_0), select(global2.c.yyw, global2.c.ywy, global2.c.x))), _wgslsmith_div_vec3_i32(~var_0, ~arg_0.b.wxy)));
    return arg_0.a.x | ~_wgslsmith_mult_u32(1u, ~4294967295u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-18969i, arg_0.x, u_input.b, arg_0.x), _wgslsmith_clamp_vec4_i32(global2.b.b, vec4<i32>(u_input.c, u_input.c, 57907i, -2147483647i), global2.b.b)), -_wgslsmith_mod_vec4_i32(firstTrailingBit(global2.b.b), select(global2.a, global2.b.b, vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)))), global2.b, select(!global2.c, vec4<bool>(arg_1.x, true && (u_input.d.x >= 46842u), arg_1.x, !arg_1.x), select(func_1(), arg_1, true)), global2.d);
    global0 = all(func_1().zyz);
    var_0 = Struct_2(global2.a, Struct_1(var_0.b.a, -(-vec4<i32>(u_input.b, arg_0.x, var_0.b.b.x, global2.b.b.x) | _wgslsmith_mod_vec4_i32(global2.b.b, vec4<i32>(-1i, u_input.a.x, u_input.b, arg_0.x)))), !func_1(), _wgslsmith_div_vec3_i32(-(~global2.b.b.yxx), min(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, var_0.b.b.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, var_0.d.x), vec3<i32>(arg_0.x, global2.b.b.x, -1i), global2.b.b.wzw)), var_0.a.xzx)));
    global1 = vec4<u32>(var_0.b.a.x, select(global1.x, func_4(Struct_1(vec2<u32>(0u, var_0.b.a.x), func_3(Struct_2(vec4<i32>(u_input.c, var_0.b.b.x, var_0.b.b.x, arg_0.x), Struct_1(vec2<u32>(4294967295u, global2.b.a.x), var_0.a), global2.c, vec3<i32>(21679i, 1i, 2147483647i)), vec2<i32>(453i, u_input.a.x), global1.xx)), global2.b, vec3<i32>(min(var_0.d.x, 2147483647i), global2.a.x << (1u % 32u), ~global2.b.b.x)), false), select(55184u, _wgslsmith_dot_vec2_u32(~(~global2.b.a), ~(~vec2<u32>(16117u, u_input.d.x))), var_0.c.x), ~_wgslsmith_mult_u32(func_4(global2.b, var_0.b, global2.a.wwy >> (global1.zxx % vec3<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(39489u, var_0.b.a.x)), ~1u)));
    let var_1 = u_input.d.x;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(-vec3<i32>(_wgslsmith_dot_vec4_i32(global2.b.b, vec4<i32>(2147483647i, -6835i, u_input.a.x, -9533i)), -45252i, ~firstTrailingBit(1i)), select(global2.c, func_1(), !vec4<bool>(func_1().x, func_1().x, !global2.c.x, global2.c.x)));
    let var_1 = ~u_input.d.x;
    global0 = global2.c.x;
    var var_2 = var_0;
    let var_3 = min(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(max(global1.xx, vec2<u32>(global2.b.a.x, 4294967295u)), u_input.d.zx), 1u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(540f + 889f), -1000f)))), var_2.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1430f, -1389f, -302f))) + _wgslsmith_div_vec3_f32(vec3<f32>(423f, -2622f, -1461f), vec3<f32>(-643f, 821f, 1441f))))));
}

