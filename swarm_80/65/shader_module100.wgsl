struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<u32>(1u, 14091u, 13277u), vec4<i32>(i32(-2147483648), -19827i, -19563i, -1i), true, vec3<bool>(false, true, false), 1474f), Struct_1(vec3<u32>(23613u, 0u, 33820u), vec4<i32>(-26963i, 3829i, 2147483647i, 220i), false, vec3<bool>(true, true, true), 620f), Struct_1(vec3<u32>(19005u, 13799u, 4260u), vec4<i32>(-3061i, 1i, -5529i, 0i), false, vec3<bool>(true, true, true), -1155f), Struct_1(vec3<u32>(56268u, 1u, 4294967295u), vec4<i32>(1i, 52113i, 0i, 2147483647i), false, vec3<bool>(false, false, false), -1383f), Struct_1(vec3<u32>(0u, 40028u, 4294967295u), vec4<i32>(0i, 1i, i32(-2147483648), 10258i), false, vec3<bool>(true, false, false), -184f), Struct_1(vec3<u32>(72599u, 9959u, 0u), vec4<i32>(8666i, -11858i, 1i, -56578i), true, vec3<bool>(false, false, true), 638f), Struct_1(vec3<u32>(1u, 78955u, 4294967295u), vec4<i32>(i32(-2147483648), -1i, 0i, i32(-2147483648)), true, vec3<bool>(false, false, true), -228f), Struct_1(vec3<u32>(4294967295u, 65175u, 1u), vec4<i32>(44604i, -14908i, 11162i, 55729i), true, vec3<bool>(false, true, false), 149f), Struct_1(vec3<u32>(25371u, 63376u, 80949u), vec4<i32>(-11954i, 2147483647i, -1i, 34954i), false, vec3<bool>(false, true, true), 1000f), Struct_1(vec3<u32>(18986u, 0u, 25432u), vec4<i32>(i32(-2147483648), 9698i, 42565i, 0i), true, vec3<bool>(false, false, true), -265f), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec4<i32>(-1i, 26553i, 0i, 57516i), true, vec3<bool>(true, false, false), -921f), Struct_1(vec3<u32>(4294967295u, 13141u, 0u), vec4<i32>(61799i, 0i, -1i, 13768i), false, vec3<bool>(false, false, false), 448f), Struct_1(vec3<u32>(0u, 41288u, 20955u), vec4<i32>(11389i, 38098i, -53852i, 9927i), true, vec3<bool>(false, false, false), -1000f), Struct_1(vec3<u32>(4294967295u, 28897u, 1u), vec4<i32>(40069i, 124i, 14933i, 0i), true, vec3<bool>(false, false, true), -1010f), Struct_1(vec3<u32>(1u, 5909u, 136519u), vec4<i32>(-13970i, -6534i, -1i, 1i), false, vec3<bool>(true, true, false), -110f), Struct_1(vec3<u32>(27799u, 41682u, 107533u), vec4<i32>(2147483647i, 2147483647i, 0i, -22337i), false, vec3<bool>(false, true, false), -943f), Struct_1(vec3<u32>(1u, 1u, 0u), vec4<i32>(2147483647i, -1i, 16151i, 1i), true, vec3<bool>(true, true, false), -165f), Struct_1(vec3<u32>(0u, 11756u, 33676u), vec4<i32>(-11i, 1i, 18840i, -1i), true, vec3<bool>(false, false, true), 619f), Struct_1(vec3<u32>(19798u, 13478u, 1730u), vec4<i32>(-20052i, 2147483647i, 12991i, i32(-2147483648)), false, vec3<bool>(false, true, true), -201f), Struct_1(vec3<u32>(4294967295u, 54426u, 32926u), vec4<i32>(38596i, 9657i, 9539i, i32(-2147483648)), true, vec3<bool>(true, true, true), -1622f), Struct_1(vec3<u32>(15767u, 62889u, 28997u), vec4<i32>(1i, 2147483647i, -1i, 1i), true, vec3<bool>(false, false, false), -267f), Struct_1(vec3<u32>(0u, 18871u, 4769u), vec4<i32>(45905i, -22965i, 6802i, 0i), false, vec3<bool>(false, false, true), -1142f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 63216u), vec4<i32>(-1i, 1i, -15097i, i32(-2147483648)), false, vec3<bool>(false, true, true), 1000f), Struct_1(vec3<u32>(157u, 25043u, 17566u), vec4<i32>(-7948i, i32(-2147483648), 0i, 0i), true, vec3<bool>(false, false, false), -1488f), Struct_1(vec3<u32>(46222u, 4294967295u, 4294967295u), vec4<i32>(-15460i, 1i, -7704i, -22765i), true, vec3<bool>(false, false, false), -353f), Struct_1(vec3<u32>(24404u, 4970u, 10782u), vec4<i32>(2147483647i, 3439i, 70743i, 1i), false, vec3<bool>(false, false, true), -141f), Struct_1(vec3<u32>(0u, 12476u, 0u), vec4<i32>(1i, -21307i, i32(-2147483648), 0i), true, vec3<bool>(false, true, false), 899f));

var<private> global2: array<vec4<i32>, 31>;

var<private> global3: bool = false;

var<private> global4: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(abs(select(arg_0.b.x << (arg_1.x % 32u), _wgslsmith_dot_vec4_i32(arg_3.b.b, arg_0.b), true)), _wgslsmith_dot_vec4_i32(arg_3.b.b, global2[_wgslsmith_index_u32(4294967295u, 31u)])), ~abs(arg_0.b.x) >> (abs(max(0u, arg_3.b.a.x | arg_1.x)) % 32u));
    let var_1 = Struct_3(Struct_2(vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(abs(295f)), -1826f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.e))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3.b.a.x, 43529u), 27u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.c.x, 1143f), vec2<f32>(arg_0.e, 1713f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1122f, 665f))))), true), arg_3, arg_3, vec4<bool>(arg_2, !(_wgslsmith_f_op_f32(select(arg_0.e, arg_0.e, arg_2)) < _wgslsmith_f_op_f32(-arg_0.e)), true & all(!arg_3.b.d), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.a.x), 385f, _wgslsmith_f_op_f32(f32(-1f) * -2006f), var_1.c.b.e) + var_1.c.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, 1812f, -204f, 827f)))), select(select(vec4<bool>(arg_0.c, any(arg_3.b.d.zx), true, arg_3.b.a.x != 2950u), vec4<bool>(arg_3.d, all(var_1.d), arg_3.b.d.x, all(vec4<bool>(arg_0.c, arg_2, true, var_1.a.d))), vec4<bool>(all(vec4<bool>(var_1.c.b.c, arg_0.c, true, var_1.c.b.d.x)), true, var_1.a.b.a.x >= 1u, false)), vec4<bool>(any(arg_3.b.d.yx), any(var_1.b.b.d.xx), !(!arg_0.c), !(arg_3.b.b.x <= arg_3.b.b.x)), true)));
    let var_3 = select(arg_0.a.x >> ((48947u ^ (0u >> (arg_1.x % 32u))) % 32u), 11302u, arg_1.x == ~(arg_0.a.x ^ ~arg_3.b.a.x));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-397f * 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.b.e - -645f))))), -738f));
}

fn func_2() -> u32 {
    var var_0 = global0.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))) * vec3<f32>(704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -747f) * -546f), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(ceil(-842f)), global0.x)))) - _wgslsmith_f_op_vec3_f32(func_3(Struct_1(~select(vec3<u32>(0u, 1u, 1u), vec3<u32>(49852u, 33853u, 1u), false), vec4<i32>(-1i) * -global2[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_f_op_f32(ceil(-855f)), vec3<bool>(global0.x, global0.x || true, global0.x), _wgslsmith_f_op_f32(-1582f - -305f)), _wgslsmith_mult_vec4_u32(vec4<u32>(44471u, ~0u, min(25u, 61536u), ~1u), vec4<u32>(_wgslsmith_div_u32(64696u, 130262u), 1u, _wgslsmith_clamp_u32(1u, 1u, 1u), 1u)), any(select(vec2<bool>(true, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), global0.x), select(vec2<bool>(false, false), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(abs(-649f)), _wgslsmith_div_f32(-203f, 1057f), 1737f), Struct_1(min(vec3<u32>(44437u, 25545u, 84610u), vec3<u32>(0u, 1u, 4294967295u)), -global2[_wgslsmith_index_u32(55342u, 31u)], global0.x, select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, true, true), vec3<bool>(true, global0.x, global0.x)), 2716f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(764f, 2105f) - vec2<f32>(-372f, 181f))), global0.x))));
    var var_2 = 1860f;
    var var_3 = Struct_4(global1[_wgslsmith_index_u32(select(4294967295u, 1u, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, global0.x, false, global0.x), global0.x))), 27u)], countOneBits(-abs(-51277i)) != u_input.a, abs(~select(vec4<i32>(-32943i, u_input.a, u_input.a, u_input.a), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), !global0.x)));
    global0 = !select(!vec2<bool>(false, var_3.a.c), !(!vec2<bool>(var_3.a.d.x, true)), select(select(var_3.a.d.xx, vec2<bool>(true, true), global0.x && global0.x), var_3.a.d.yx, var_3.a.d.xz));
    return var_3.a.a.x;
}

fn func_1() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~4294967295u, 1u), vec3<u32>(72270u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 26560u, 43518u), vec3<bool>(global0.x, global0.x, global0.x)), firstLeadingBit(vec3<u32>(74818u, 1u, 0u))), abs(firstTrailingBit(773u))))), 27u)];
    let var_1 = var_0.d.zz;
    var var_2 = var_0.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.e, _wgslsmith_f_op_f32(-var_0.e)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(var_0.e + var_0.e)))));
    var var_4 = var_0.b.zx;
    return _wgslsmith_dot_vec2_u32(~var_0.a.xz, _wgslsmith_clamp_vec2_u32(var_0.a.zz >> (~(var_0.a.zy >> (vec2<u32>(0u, var_0.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~(vec2<u32>(1u, 3685u) ^ vec2<u32>(var_0.a.x, 104032u)), ~var_0.a.zy), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, var_0.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), select(var_0.a.xz, var_0.a.xy, vec2<bool>(global0.x, global0.x))), ~_wgslsmith_sub_vec2_u32(var_0.a.xx, var_0.a.zy))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0.x;
    global4 = global0.x;
    let var_0 = -(-(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -4216i), vec2<i32>(-2147483647i, -2505i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) << (vec2<u32>(~21956u, 1u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1041f)))), _wgslsmith_mult_vec4_u32(select(~max(vec4<u32>(1u, 4294967295u, 0u, 56555u), vec4<u32>(1u, 0u, 65352u, 0u)), max(~vec4<u32>(14974u, 1u, 1u, 1u), ~vec4<u32>(93982u, 4294967295u, 22097u, 1u)), false), abs(~vec4<u32>(85941u, 31585u, 8851u, 0u))), vec2<u32>(func_1(), 35210u) | firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(2983u, 48776u), vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(499f, -1422f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-684f, 1683f))))))), firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(-56587i, -68792i, var_0.x)))));
}

