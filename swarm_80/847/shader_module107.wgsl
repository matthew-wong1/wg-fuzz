struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, -38588i);

var<private> global2: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = 14070u;
    global1 = ~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -(global1.x ^ global1.x)), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-2147483647i, global1.x) << (vec2<u32>(var_0, var_0) % vec2<u32>(32u))), (vec2<i32>(global1.x, global1.x) | vec2<i32>(-1i, global1.x)) >> ((vec2<u32>(4294967295u, var_0) | vec2<u32>(u_input.a, 62480u)) % vec2<u32>(32u))));
    global2 = -1i;
    let var_1 = vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(global1.x & global1.x, ~global1.x)), vec2<i32>(-292i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(0i, global1.x, global1.x, global1.x))) << (u_input.c.yy % vec2<u32>(32u))));
    return ~global1.x;
}

fn func_2() -> i32 {
    var var_0 = all(vec3<bool>((~u_input.c.x == ~4294967295u) & true, true, any(vec3<bool>(true, true, true))));
    global0 = array<vec2<f32>, 5>();
    global1 = vec2<i32>(~(-2147483647i) & countOneBits(~global1.x), _wgslsmith_dot_vec2_i32((vec2<i32>(-2147483647i, global1.x) & vec2<i32>(-1i, -3043i)) << (_wgslsmith_mod_vec2_u32(u_input.b, u_input.b) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, global1.x), -vec2<i32>(global1.x, -38046i)))) >> (~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b)), _wgslsmith_sub_vec2_u32(u_input.b, ~vec2<u32>(u_input.c.x, 67831u))) % vec2<u32>(32u));
    var var_1 = u_input.b.x;
    var var_2 = vec3<u32>(48647u, u_input.b.x, reverseBits(4239u));
    return _wgslsmith_mod_i32(func_3(), global1.x);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec4<i32>(arg_2.x, 2147483647i, arg_3.a.x, ~_wgslsmith_mod_i32(-(~(-2147483647i)), arg_3.c.a.x));
    var var_1 = arg_2;
    var var_2 = select(select(vec4<bool>((arg_3.d || false) & true, var_1.x < func_2(), arg_3.e.c.x, arg_3.d), vec4<bool>(any(!vec4<bool>(arg_1, true, arg_0.e.c.x, arg_3.e.c.x)), !any(arg_3.e.c), true, !(global1.x < arg_0.e.a.a.x)), vec4<bool>(1000f > _wgslsmith_f_op_f32(-138f * arg_3.e.d.x), _wgslsmith_div_i32(arg_2.x, var_1.x) == ~(-25808i), !any(vec3<bool>(arg_3.e.c.x, false, true)), arg_1)), vec4<bool>(_wgslsmith_f_op_f32(-756f + arg_3.e.d.x) <= _wgslsmith_f_op_f32(sign(arg_3.e.d.x)), all(vec3<bool>(arg_1, any(vec3<bool>(false, arg_1, true)), arg_1 | false)), all(select(!arg_0.e.c, select(arg_0.e.c, vec2<bool>(arg_3.d, arg_1), vec2<bool>(true, arg_3.e.c.x)), !vec2<bool>(false, arg_0.e.c.x))), arg_3.e.c.x), select(vec4<bool>(!select(arg_3.e.c.x, arg_1, arg_0.e.c.x), all(!vec3<bool>(arg_3.e.c.x, arg_3.e.c.x, arg_3.e.c.x)), _wgslsmith_f_op_f32(-arg_0.e.d.x) > arg_0.e.d.x, !(false | arg_1)), select(select(!vec4<bool>(arg_3.e.c.x, true, arg_0.e.c.x, arg_3.e.c.x), vec4<bool>(arg_1, arg_1, false, arg_3.e.c.x), arg_1), select(select(vec4<bool>(false, arg_1, false, arg_3.d), vec4<bool>(true, arg_1, true, arg_0.d), vec4<bool>(false, arg_1, arg_1, true)), vec4<bool>(false, false, arg_1, arg_1), select(vec4<bool>(false, arg_1, true, true), vec4<bool>(true, true, arg_0.e.c.x, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1))), vec4<bool>(!arg_1, !arg_0.e.c.x, any(vec2<bool>(arg_3.d, false)), true)), !(!select(false, arg_3.d, true))));
    var var_3 = arg_0.b.x;
    global2 = _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(abs(reverseBits(arg_3.e.e.a.x)), 56270i, -(~global1.x)), -1i), 0i | abs(-arg_0.e.a.a.x));
    return Struct_1(vec3<i32>(-5007i, ~(-(57402i & global1.x)), 65145i));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = !(!select(!arg_3.c, arg_1.c, arg_2.x > _wgslsmith_f_op_f32(abs(arg_3.d.x))));
    global1 = -select(arg_3.e.a.zz, ~firstTrailingBit(-arg_1.e.a.zz), arg_3.c);
    let var_1 = Struct_3(arg_3.e.a.zx, arg_1.a.a, func_1(Struct_3(~arg_1.a.a.xy ^ reverseBits(arg_3.a.a.zz), func_1(Struct_3(vec2<i32>(global1.x, 0i), vec3<i32>(-1i, arg_3.a.a.x, -11563i), arg_1.a, true, Struct_2(arg_3.a, arg_1.b, vec2<bool>(false, arg_3.c.x), arg_3.d, arg_3.e)), true, vec3<i32>(arg_3.a.a.x, 21545i, -29237i), Struct_3(vec2<i32>(arg_1.e.a.x, global1.x), vec3<i32>(arg_3.e.a.x, arg_1.e.a.x, 0i), arg_3.e, false, Struct_2(Struct_1(vec3<i32>(0i, 3300i, global1.x)), arg_1.b, arg_3.c, vec2<f32>(548f, 648f), Struct_1(arg_3.a.a)))).a, func_1(Struct_3(arg_3.a.a.yz, vec3<i32>(global1.x, arg_3.a.a.x, global1.x), arg_1.e, false, arg_1), var_0.x, arg_3.e.a & arg_3.e.a, Struct_3(arg_3.e.a.xx, arg_1.e.a, arg_1.e, arg_1.c.x, arg_1)), any(!arg_3.c), arg_3), true & any(select(vec3<bool>(false, var_0.x, arg_3.c.x), vec3<bool>(arg_0, true, false), false)), arg_3.e.a, Struct_3(max(-arg_1.a.a.yy, vec2<i32>(-36456i, -14302i) | arg_3.e.a.xy), ~arg_3.a.a, func_1(Struct_3(vec2<i32>(global1.x, arg_3.a.a.x), arg_1.a.a, arg_1.e, var_0.x, arg_1), true, arg_3.e.a, Struct_3(vec2<i32>(arg_1.a.a.x, 45625i), vec3<i32>(arg_3.e.a.x, global1.x, global1.x), arg_3.a, true, arg_3)), arg_3.c.x, Struct_2(func_1(Struct_3(vec2<i32>(arg_3.a.a.x, arg_1.e.a.x), arg_3.e.a, Struct_1(arg_3.e.a), arg_0, Struct_2(arg_3.e, 4294967295u, arg_1.c, arg_3.d, Struct_1(vec3<i32>(global1.x, arg_3.e.a.x, -45000i)))), var_0.x, arg_3.e.a, Struct_3(vec2<i32>(2147483647i, arg_3.a.a.x), arg_1.e.a, arg_1.a, false, Struct_2(arg_3.a, 32669u, vec2<bool>(arg_0, true), global0[_wgslsmith_index_u32(13912u, 5u)], Struct_1(arg_1.a.a)))), u_input.c.x, arg_3.c, vec2<f32>(arg_3.d.x, arg_2.x), func_1(Struct_3(vec2<i32>(2147483647i, -26775i), arg_1.e.a, Struct_1(arg_1.a.a), arg_3.c.x, arg_1), false, arg_1.a.a, Struct_3(arg_1.e.a.yz, arg_3.a.a, arg_3.e, var_0.x, Struct_2(arg_1.e, u_input.b.x, arg_1.c, vec2<f32>(arg_3.d.x, arg_1.d.x), arg_3.a)))))), true, arg_1);
    global1 = _wgslsmith_add_vec2_i32(select(select(vec2<i32>(arg_3.e.a.x, -10758i), arg_1.a.a.zy, select(vec2<bool>(arg_1.c.x, arg_0), !vec2<bool>(var_1.d, true), select(arg_1.c, vec2<bool>(true, false), true))), ~min(arg_3.e.a.xz << (u_input.c.xy % vec2<u32>(32u)), vec2<i32>(arg_3.a.a.x, global1.x)), arg_1.c), -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.e.a.x, 2147483647i, arg_3.a.a.x), arg_3.a.a), _wgslsmith_div_i32(-1i, abs(-1i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_1.e.b, 5u)]))))))));
    return func_1(Struct_3(arg_1.e.a.yx, arg_3.e.a, Struct_1(var_1.e.a.a), any(!select(vec4<bool>(true, arg_3.c.x, arg_1.c.x, false), vec4<bool>(true, arg_1.c.x, true, true), arg_0)), Struct_2(func_1(var_1, var_2.x != 1220f, ~var_1.b, var_1), 1u, vec2<bool>(true, var_1.e.b != var_1.e.b), vec2<f32>(_wgslsmith_f_op_f32(-439f - arg_2.x), _wgslsmith_div_f32(1192f, -1000f)), func_1(Struct_3(arg_1.e.a.zy, vec3<i32>(arg_1.e.a.x, arg_1.a.a.x, -4644i), Struct_1(arg_1.a.a), true, Struct_2(Struct_1(var_1.e.e.a), 1u, arg_3.c, vec2<f32>(798f, 2020f), Struct_1(arg_3.a.a))), true, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.a.a.x, 14780i, arg_3.a.a.x), vec3<i32>(-3980i, arg_1.e.a.x, var_1.e.e.a.x)), Struct_3(arg_3.a.a.yx, vec3<i32>(-1i, global1.x, arg_1.e.a.x), Struct_1(var_1.e.e.a), arg_3.c.x, arg_3)))), 1i == _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, arg_3.e.a.x << (arg_3.b % 32u)), ~0i), arg_1.a.a, Struct_3(vec2<i32>(global1.x << (var_1.e.b % 32u), -arg_1.a.a.x), abs(vec3<i32>(0i, func_2(), 2147483647i)), arg_3.e, !select(arg_1.c.x, arg_0 & false, all(vec3<bool>(true, arg_1.c.x, false))), arg_1));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> StorageBuffer {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(73561u, 45493u, 0u, 0u), vec4<u32>(arg_0.b, arg_0.b, 0u, arg_1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 39293u, arg_0.b, 1u), vec4<u32>(u_input.c.x, arg_1.x, arg_0.b, arg_1.x))), ~(~(~vec4<u32>(1u, 1u, 4529u, 0u)))), 4294967295u);
    return StorageBuffer(-arg_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(max(global1.x, 32303i), 2147483647i);
    let var_0 = -232f;
    global0 = array<vec2<f32>, 5>();
    var var_1 = 1i == global1.x;
    var var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(23790u, u_input.a)), 5u)];
    global0 = array<vec2<f32>, 5>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(var_0, -594f)), -1174f);
    let var_4 = -988f;
    let x = u_input.a;
    s_output = func_5(Struct_2(func_4(!all(vec2<bool>(true, false)), Struct_2(func_1(Struct_3(vec2<i32>(-29540i, global1.x), vec3<i32>(-2147483647i, -2463i, 1i), Struct_1(vec3<i32>(-51237i, 15659i, global1.x)), true, Struct_2(Struct_1(vec3<i32>(global1.x, global1.x, global1.x)), 4294967295u, vec2<bool>(true, true), vec2<f32>(583f, -1305f), Struct_1(vec3<i32>(1i, 2147483647i, global1.x)))), true, vec3<i32>(1i, global1.x, global1.x), Struct_3(vec2<i32>(global1.x, global1.x), vec3<i32>(2147483647i, global1.x, global1.x), Struct_1(vec3<i32>(global1.x, global1.x, -1i)), false, Struct_2(Struct_1(vec3<i32>(global1.x, 1i, global1.x)), 4600u, vec2<bool>(true, false), vec2<f32>(1532f, var_2.x), Struct_1(vec3<i32>(29441i, -12187i, global1.x))))), ~21705u, vec2<bool>(false, false), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1302f), global0[_wgslsmith_index_u32(u_input.b.x, 5u)], vec2<bool>(false, false))), func_1(Struct_3(vec2<i32>(-48225i, -17023i), vec3<i32>(-2147483647i, -61911i, 37390i), Struct_1(vec3<i32>(45596i, global1.x, 1i)), false, Struct_2(Struct_1(vec3<i32>(1501i, global1.x, global1.x)), 30355u, vec2<bool>(true, false), global0[_wgslsmith_index_u32(1u, 5u)], Struct_1(vec3<i32>(global1.x, 1i, 2147483647i)))), false, vec3<i32>(2147483647i, global1.x, global1.x), Struct_3(vec2<i32>(7666i, 27748i), vec3<i32>(-61216i, global1.x, global1.x), Struct_1(vec3<i32>(16404i, global1.x, global1.x)), false, Struct_2(Struct_1(vec3<i32>(global1.x, -23294i, -1i)), u_input.a, vec2<bool>(false, false), vec2<f32>(-1000f, 1151f), Struct_1(vec3<i32>(1i, 16449i, -1i)))))), _wgslsmith_f_op_vec2_f32(step(var_3, vec2<f32>(859f, 306f))), Struct_2(func_1(Struct_3(vec2<i32>(36681i, global1.x), vec3<i32>(global1.x, global1.x, -70500i), Struct_1(vec3<i32>(-2147483647i, -20208i, -10277i)), false, Struct_2(Struct_1(vec3<i32>(global1.x, global1.x, -1i)), u_input.c.x, vec2<bool>(true, true), var_3, Struct_1(vec3<i32>(global1.x, global1.x, global1.x)))), true, vec3<i32>(global1.x, -32129i, 31827i), Struct_3(vec2<i32>(-54059i, global1.x), vec3<i32>(1i, global1.x, global1.x), Struct_1(vec3<i32>(-1i, global1.x, -2147483647i)), true, Struct_2(Struct_1(vec3<i32>(-2147483647i, -52069i, global1.x)), 36200u, vec2<bool>(false, false), vec2<f32>(var_2.x, -1369f), Struct_1(vec3<i32>(global1.x, 27661i, 0i))))), 0u, vec2<bool>(true, true), vec2<f32>(var_2.x, var_2.x), Struct_1(vec3<i32>(global1.x, global1.x, global1.x)))), abs(1u) ^ (~u_input.b.x << (1u % 32u)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(var_3 * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 389f) - vec2<f32>(var_4, 326f))))), Struct_1(vec3<i32>(-36375i, -global1.x, -global1.x))), ~(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 80099u, u_input.b.x), vec3<u32>(6761u, u_input.b.x, u_input.a)), ~vec3<u32>(44820u, 29669u, 4294967295u), vec3<u32>(22685u, u_input.c.x, u_input.a) & vec3<u32>(u_input.c.x, u_input.c.x, 1u)) | vec3<u32>(u_input.b.x, min(0u, u_input.a), 0u & u_input.b.x)));
}

