struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_3(Struct_1(-7704i, vec4<i32>(625i, i32(-2147483648), -19906i, 0i), vec3<bool>(true, false, false)), -19612i, vec2<i32>(-53106i, 1i), Struct_1(-53365i, vec4<i32>(-20984i, -1i, 38649i, i32(-2147483648)), vec3<bool>(false, true, false)), vec3<i32>(2147483647i, 2147483647i, -13466i)), 0u), Struct_4(Struct_3(Struct_1(0i, vec4<i32>(-26568i, i32(-2147483648), 27806i, 12076i), vec3<bool>(false, true, true)), 14909i, vec2<i32>(-66994i, -48867i), Struct_1(i32(-2147483648), vec4<i32>(-11830i, 51149i, -1i, 0i), vec3<bool>(true, true, true)), vec3<i32>(-1i, 31544i, 0i)), 1u), Struct_4(Struct_3(Struct_1(i32(-2147483648), vec4<i32>(-32027i, -23771i, 2147483647i, 14887i), vec3<bool>(false, false, true)), -1i, vec2<i32>(0i, 15183i), Struct_1(29464i, vec4<i32>(1i, -13388i, 2147483647i, -55096i), vec3<bool>(true, true, true)), vec3<i32>(0i, -1i, 1i)), 4294967295u), Struct_4(Struct_3(Struct_1(2246i, vec4<i32>(0i, 32681i, 46779i, 1i), vec3<bool>(false, false, false)), 0i, vec2<i32>(-1i, 1i), Struct_1(-17668i, vec4<i32>(0i, 2147483647i, 2147483647i, 0i), vec3<bool>(false, false, true)), vec3<i32>(28591i, -14641i, 24256i)), 38926u), Struct_4(Struct_3(Struct_1(10385i, vec4<i32>(0i, 46542i, 17054i, -1i), vec3<bool>(false, false, false)), -9512i, vec2<i32>(54605i, 0i), Struct_1(2147483647i, vec4<i32>(0i, 38979i, -19374i, 27933i), vec3<bool>(false, true, true)), vec3<i32>(2147483647i, -59565i, -6069i)), 4294967295u), Struct_4(Struct_3(Struct_1(0i, vec4<i32>(32458i, 0i, 1i, -1i), vec3<bool>(true, true, true)), 0i, vec2<i32>(i32(-2147483648), 0i), Struct_1(1i, vec4<i32>(2147483647i, i32(-2147483648), -49640i, -19262i), vec3<bool>(false, true, false)), vec3<i32>(-19770i, 0i, i32(-2147483648))), 16938u), Struct_4(Struct_3(Struct_1(0i, vec4<i32>(1i, 1i, 0i, 6028i), vec3<bool>(false, true, false)), -20328i, vec2<i32>(-8532i, i32(-2147483648)), Struct_1(-19183i, vec4<i32>(0i, 3562i, i32(-2147483648), 9843i), vec3<bool>(true, false, false)), vec3<i32>(i32(-2147483648), 19652i, 2147483647i)), 22500u), Struct_4(Struct_3(Struct_1(1i, vec4<i32>(1i, 1i, 36342i, -3716i), vec3<bool>(true, true, true)), 2147483647i, vec2<i32>(19945i, -51638i), Struct_1(7070i, vec4<i32>(-15261i, 0i, 21218i, -63639i), vec3<bool>(true, true, false)), vec3<i32>(-700i, 6496i, i32(-2147483648))), 4294967295u), Struct_4(Struct_3(Struct_1(0i, vec4<i32>(-43031i, 1i, 40457i, 18468i), vec3<bool>(false, false, true)), 15891i, vec2<i32>(0i, 1i), Struct_1(-15754i, vec4<i32>(81773i, -3196i, -18657i, 1i), vec3<bool>(true, false, false)), vec3<i32>(34730i, 0i, -52292i)), 18720u), Struct_4(Struct_3(Struct_1(i32(-2147483648), vec4<i32>(0i, 8453i, 2147483647i, -11705i), vec3<bool>(true, true, true)), -1i, vec2<i32>(-44662i, -19103i), Struct_1(2147483647i, vec4<i32>(-1i, 0i, 32439i, -53698i), vec3<bool>(true, true, false)), vec3<i32>(3280i, 0i, -92954i)), 0u), Struct_4(Struct_3(Struct_1(1i, vec4<i32>(52931i, 0i, 2147483647i, 64292i), vec3<bool>(true, false, true)), -36401i, vec2<i32>(-1i, 2147483647i), Struct_1(-1i, vec4<i32>(0i, 1i, -1i, 152i), vec3<bool>(false, false, true)), vec3<i32>(-19954i, 1i, i32(-2147483648))), 0u), Struct_4(Struct_3(Struct_1(-27522i, vec4<i32>(12475i, -30151i, 5188i, 0i), vec3<bool>(true, true, false)), 1i, vec2<i32>(6937i, -6733i), Struct_1(1i, vec4<i32>(23674i, -9893i, i32(-2147483648), 49094i), vec3<bool>(true, false, false)), vec3<i32>(1i, i32(-2147483648), 2147483647i)), 4294967295u), Struct_4(Struct_3(Struct_1(61698i, vec4<i32>(-28373i, -4683i, -1373i, 0i), vec3<bool>(true, true, true)), -24042i, vec2<i32>(i32(-2147483648), -15749i), Struct_1(-11857i, vec4<i32>(i32(-2147483648), 42238i, 2147483647i, -8687i), vec3<bool>(true, false, false)), vec3<i32>(i32(-2147483648), -36552i, -35062i)), 4294967295u), Struct_4(Struct_3(Struct_1(0i, vec4<i32>(-1i, 0i, 1i, -24446i), vec3<bool>(true, false, true)), 1i, vec2<i32>(-461i, -1i), Struct_1(i32(-2147483648), vec4<i32>(2147483647i, -6266i, 26904i, 0i), vec3<bool>(true, true, false)), vec3<i32>(1i, 2147483647i, 2147483647i)), 49579u), Struct_4(Struct_3(Struct_1(1i, vec4<i32>(-35872i, -279i, -6238i, 0i), vec3<bool>(false, false, false)), 21148i, vec2<i32>(-37371i, -3167i), Struct_1(-1i, vec4<i32>(2147483647i, 59434i, 1i, 2147483647i), vec3<bool>(false, false, true)), vec3<i32>(8238i, -27995i, 54814i)), 398u), Struct_4(Struct_3(Struct_1(-24808i, vec4<i32>(-9868i, 2147483647i, -20466i, -29104i), vec3<bool>(false, true, false)), 2147483647i, vec2<i32>(-1i, i32(-2147483648)), Struct_1(-43257i, vec4<i32>(2147483647i, 16803i, 1i, 0i), vec3<bool>(false, false, false)), vec3<i32>(-44951i, -1i, i32(-2147483648))), 0u), Struct_4(Struct_3(Struct_1(2147483647i, vec4<i32>(2147483647i, 1i, 26000i, -2531i), vec3<bool>(true, false, false)), 0i, vec2<i32>(-45985i, 3437i), Struct_1(0i, vec4<i32>(-25407i, i32(-2147483648), 1i, -1i), vec3<bool>(false, false, true)), vec3<i32>(31663i, -3687i, 10067i)), 7164u), Struct_4(Struct_3(Struct_1(-66152i, vec4<i32>(-2085i, -1i, 1i, i32(-2147483648)), vec3<bool>(true, true, true)), -11536i, vec2<i32>(i32(-2147483648), 27577i), Struct_1(25522i, vec4<i32>(-15835i, -25201i, -1i, 1i), vec3<bool>(false, true, false)), vec3<i32>(-1i, 39201i, 0i)), 4294967295u), Struct_4(Struct_3(Struct_1(i32(-2147483648), vec4<i32>(-10026i, 34555i, -4292i, -39021i), vec3<bool>(true, false, true)), i32(-2147483648), vec2<i32>(-35848i, i32(-2147483648)), Struct_1(-33058i, vec4<i32>(0i, -1i, 45243i, -27510i), vec3<bool>(true, true, true)), vec3<i32>(815i, 2147483647i, -12772i)), 19914u), Struct_4(Struct_3(Struct_1(26609i, vec4<i32>(54131i, 40216i, i32(-2147483648), -1i), vec3<bool>(true, true, true)), -6263i, vec2<i32>(2147483647i, 6983i), Struct_1(-19450i, vec4<i32>(18578i, -43553i, -18095i, -1i), vec3<bool>(true, false, false)), vec3<i32>(3022i, -1i, 1i)), 26669u), Struct_4(Struct_3(Struct_1(1i, vec4<i32>(19681i, 1i, -1i, i32(-2147483648)), vec3<bool>(false, false, true)), 2147483647i, vec2<i32>(0i, 30699i), Struct_1(2147483647i, vec4<i32>(6510i, 1i, -24921i, -25609i), vec3<bool>(true, true, true)), vec3<i32>(i32(-2147483648), -29909i, 39561i)), 109943u), Struct_4(Struct_3(Struct_1(3905i, vec4<i32>(i32(-2147483648), 35177i, 1i, -29314i), vec3<bool>(true, false, false)), -34067i, vec2<i32>(35132i, -10320i), Struct_1(1i, vec4<i32>(i32(-2147483648), -22920i, -1i, i32(-2147483648)), vec3<bool>(false, true, true)), vec3<i32>(-27288i, 54209i, 21859i)), 66259u), Struct_4(Struct_3(Struct_1(-42846i, vec4<i32>(0i, 2147483647i, 1i, -1i), vec3<bool>(true, false, false)), 2147483647i, vec2<i32>(-1i, 64867i), Struct_1(2147483647i, vec4<i32>(-1i, -1i, 15484i, 1i), vec3<bool>(false, true, true)), vec3<i32>(1i, -89827i, i32(-2147483648))), 16875u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    global0 = array<Struct_4, 23>();
    var var_0 = Struct_4(Struct_3(Struct_1(abs(1i), -vec4<i32>(-2428i, u_input.c, 0i, u_input.c), select(vec3<bool>(arg_0, false, arg_0), !vec3<bool>(false, true, arg_0), !vec3<bool>(arg_0, false, true))), countOneBits(-u_input.c), ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, -49506i), vec2<i32>(u_input.c, u_input.c), vec2<i32>(-25469i, u_input.c))), Struct_1(-1i, vec4<i32>(-1i, u_input.c, u_input.c, u_input.c), !(!vec3<bool>(true, true, arg_0))), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-1i, -38546i, 1i)), ~13024i, u_input.c)), 57290u);
    let var_1 = var_0.a;
    var var_2 = -firstTrailingBit(41898i);
    let var_3 = 0u;
    return arg_0;
}

fn func_2() -> vec4<u32> {
    global0 = array<Struct_4, 23>();
    var var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(any(select(!(!vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(true, any(vec3<bool>(var_0.x, var_0.x, false)), false & var_0.x), !var_0.x)), all(var_0.xy), func_3(false && var_0.x, 1422f));
    let var_1 = Struct_1(u_input.c, select(min(max(vec4<i32>(u_input.c, -6372i, u_input.c, 1i), vec4<i32>(2147483647i, u_input.c, 0i, u_input.c)), countOneBits(vec4<i32>(u_input.c, 1i, u_input.c, 14234i))), min(vec4<i32>(-2147483647i, u_input.c, u_input.c, 0i), vec4<i32>(0i, u_input.c, 2147483647i, -2147483647i)) & countOneBits(vec4<i32>(-33976i, -20264i, u_input.c, u_input.c)), var_0.x) ^ (_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, -25016i, u_input.c, u_input.c), vec4<i32>(u_input.c, 0i, 2878i, u_input.c)), min(vec4<i32>(u_input.c, 1i, 34330i, 0i), vec4<i32>(8960i, u_input.c, u_input.c, 0i))) >> (vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.b.x), u_input.a.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec3<bool>(!(!(!var_0.x)), func_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1031f - -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, -709f)), _wgslsmith_f_op_f32(sign(-1094f)))) == -466f));
    let var_2 = Struct_1(select(countOneBits(u_input.c), ~var_1.b.x & abs(0i), true) | _wgslsmith_mod_i32(var_1.a, -18959i), ~abs(var_1.b), var_1.c);
    return u_input.b;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    global0 = array<Struct_4, 23>();
    var var_0 = ~func_2();
    global0 = array<Struct_4, 23>();
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_i32(u_input.c, u_input.c), vec4<i32>(firstTrailingBit(abs(0i)), -1i, -2147483647i, -u_input.c), vec3<bool>(all(vec3<bool>(true, true, true)), true, abs(u_input.c) == _wgslsmith_mult_i32(u_input.c, u_input.c))), _wgslsmith_add_i32(u_input.c, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, -9748i, u_input.c, u_input.c), vec4<i32>(u_input.c, -2147483647i, -46391i, u_input.c), true), -vec4<i32>(-3219i, u_input.c, -35801i, -18380i))), vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(-12191i, u_input.c, -17290i)), Struct_1(u_input.c << (_wgslsmith_div_u32(var_0.x, _wgslsmith_sub_u32(37356u, u_input.a.x)) % 32u), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 58350i, ~u_input.c, u_input.c), vec4<i32>(-1i, -u_input.c, 1i, select(u_input.c, u_input.c, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(u_input.c <= u_input.c))), max(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c, 577i, u_input.c), _wgslsmith_sub_vec3_i32(vec3<i32>(6841i, 84875i, u_input.c), vec3<i32>(-36718i, u_input.c, u_input.c))), select(vec3<i32>(u_input.c, u_input.c, u_input.c), -vec3<i32>(u_input.c, -7832i, u_input.c), all(vec3<bool>(false, true, false)))) >> (~_wgslsmith_mult_vec3_u32(u_input.a.zww, vec3<u32>(0u, u_input.a.x, 32029u)) % vec3<u32>(32u)));
    var_0 = ~(~u_input.b);
    return _wgslsmith_clamp_vec3_i32(~(-(vec3<i32>(u_input.c, 26679i, -4050i) << (vec3<u32>(17463u, 67338u, var_0.x) % vec3<u32>(32u)))) & vec3<i32>(_wgslsmith_mod_i32(var_1.d.a, -2147483647i) >> (max(4294967295u, u_input.b.x) % 32u), var_1.b, u_input.c), vec3<i32>(_wgslsmith_dot_vec4_i32(var_1.a.b, _wgslsmith_div_vec4_i32(var_1.d.b, -var_1.d.b)), _wgslsmith_div_i32(2147483647i, firstLeadingBit(7604i)), _wgslsmith_div_i32(min(42087i, -31797i), _wgslsmith_mod_i32(var_1.e.x, 5521i))), -_wgslsmith_add_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.c, 1i, u_input.c)), -(~var_1.d.b.wxz)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1;
    global0 = array<Struct_4, 23>();
    var var_1 = !vec4<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(var_0.d.c.x, false), vec2<bool>(arg_1.d.c.x, var_0.d.c.x))), false, true);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(927f + 1307f) * _wgslsmith_f_op_f32(f32(-1f) * -1303f)))), _wgslsmith_f_op_f32(945f - -673f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(147f, 427f))));
    let var_3 = Struct_2(Struct_1(arg_0.x, -(~vec4<i32>(var_0.d.b.x, -2147483647i, -29505i, 1i)), !vec3<bool>(var_0.d.c.x, true, false)), -(-2147483647i << (_wgslsmith_mod_u32(4294967295u, u_input.a.x) % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(683f, -332f, !func_3(var_0.a.c.x, _wgslsmith_f_op_f32(step(274f, -618f))))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: bool) -> StorageBuffer {
    let var_0 = 2248f;
    global0 = array<Struct_4, 23>();
    let var_1 = Struct_1(u_input.c, vec4<i32>(-2147483647i, ~u_input.c, _wgslsmith_sub_i32(select(_wgslsmith_mod_i32(u_input.c, u_input.c), ~(-30058i), !arg_2), 1i), firstTrailingBit(u_input.c)), vec3<bool>(false, true, !arg_2));
    let var_2 = select(firstLeadingBit(vec2<i32>(1i, ~0i >> (u_input.b.x % 32u))), select(var_1.b.zz, var_1.b.xy, false), var_1.c.x);
    var var_3 = arg_2 != arg_2;
    return StorageBuffer(~(~func_2().xxw), ~var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(1227f - _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_f32(-642f * -519f)), Struct_3(Struct_1(-61179i, vec4<i32>(u_input.c, u_input.c, 1i, 59140i), vec3<bool>(true, false, false)), ~(-1i), func_1(767f).xx, Struct_1(u_input.c, vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c), vec3<bool>(false, false, false)), ~vec3<i32>(65032i, u_input.c, u_input.c))))), -2026f, -596f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1060f, 798f)) - _wgslsmith_f_op_f32(780f * -1333f)))));
}

