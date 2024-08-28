struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(85628u, 1u, 0u, 1u));

var<private> global1: array<Struct_1, 10>;

var<private> global2: Struct_4;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_2(vec4<u32>(22357u, 48466u, 0u, 0u)), 1i), Struct_3(Struct_2(vec4<u32>(64090u, 4294967295u, 0u, 4294967295u)), 10816i), Struct_3(Struct_2(vec4<u32>(18741u, 4294967295u, 84169u, 70855u)), 21494i), Struct_3(Struct_2(vec4<u32>(4294967295u, 0u, 1u, 0u)), 48492i), Struct_3(Struct_2(vec4<u32>(25079u, 0u, 21741u, 0u)), -41435i), Struct_3(Struct_2(vec4<u32>(8346u, 6664u, 17887u, 1u)), 2147483647i), Struct_3(Struct_2(vec4<u32>(21068u, 11741u, 14084u, 0u)), 2147483647i), Struct_3(Struct_2(vec4<u32>(24816u, 1u, 0u, 1u)), -1i), Struct_3(Struct_2(vec4<u32>(4294967295u, 32608u, 1u, 74520u)), 16974i), Struct_3(Struct_2(vec4<u32>(12897u, 48773u, 55060u, 10295u)), 11015i), Struct_3(Struct_2(vec4<u32>(0u, 24698u, 1u, 4103u)), -68758i), Struct_3(Struct_2(vec4<u32>(4294967295u, 7205u, 0u, 49413u)), -1i), Struct_3(Struct_2(vec4<u32>(0u, 1u, 0u, 1u)), 1i), Struct_3(Struct_2(vec4<u32>(24701u, 0u, 27812u, 0u)), 2117i), Struct_3(Struct_2(vec4<u32>(0u, 9399u, 29358u, 1u)), 80054i), Struct_3(Struct_2(vec4<u32>(23647u, 26289u, 0u, 4294967295u)), -5701i), Struct_3(Struct_2(vec4<u32>(4294967295u, 4294967295u, 27257u, 1u)), -31240i), Struct_3(Struct_2(vec4<u32>(28508u, 6151u, 0u, 90281u)), i32(-2147483648)), Struct_3(Struct_2(vec4<u32>(22950u, 52380u, 4294967295u, 1u)), -1i), Struct_3(Struct_2(vec4<u32>(13970u, 4294967295u, 0u, 0u)), 0i), Struct_3(Struct_2(vec4<u32>(1u, 59896u, 0u, 11515u)), -367i), Struct_3(Struct_2(vec4<u32>(0u, 0u, 4294967295u, 5518u)), -8780i), Struct_3(Struct_2(vec4<u32>(91797u, 1u, 28469u, 29941u)), i32(-2147483648)), Struct_3(Struct_2(vec4<u32>(4703u, 4294967295u, 17924u, 18346u)), 2147483647i), Struct_3(Struct_2(vec4<u32>(4294967295u, 4294967295u, 1u, 51450u)), 1i), Struct_3(Struct_2(vec4<u32>(9328u, 1u, 0u, 4294967295u)), 30663i), Struct_3(Struct_2(vec4<u32>(4294967295u, 95386u, 1u, 0u)), 1i), Struct_3(Struct_2(vec4<u32>(1014u, 1u, 0u, 30635u)), i32(-2147483648)), Struct_3(Struct_2(vec4<u32>(81317u, 1u, 1u, 1u)), 119011i), Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, 20249u, 0u)), 1243i), Struct_3(Struct_2(vec4<u32>(37744u, 0u, 41187u, 65646u)), 44964i), Struct_3(Struct_2(vec4<u32>(4728u, 0u, 4294967295u, 52961u)), 30020i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = vec3<i32>(min(10827i, 0i), ~((global2.b.b << (19547u % 32u)) >> (max(global2.a.a.x, global0.a.x) % 32u)), _wgslsmith_dot_vec4_i32(~(-u_input.b), vec4<i32>(20136i, global2.b.b, -2147483647i << (global2.b.a.a.x % 32u), u_input.b.x))) << (firstTrailingBit(firstLeadingBit(vec3<u32>(1u, _wgslsmith_div_u32(global2.b.a.a.x, 34859u), _wgslsmith_dot_vec3_u32(global0.a.yzw, vec3<u32>(4294967295u, 0u, global0.a.x))))) % vec3<u32>(32u));
    global1 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(-7783i, var_0.x)) & (u_input.b.zz << (_wgslsmith_sub_vec2_u32(global0.a.zx, global2.b.a.a.yz) % vec2<u32>(32u))), ~(-vec2<i32>(35807i, -2147483647i))) & (vec2<i32>(2147483647i, _wgslsmith_mod_i32(~2147483647i, var_0.x | global2.b.b)) ^ reverseBits(~select(u_input.b.zz, vec2<i32>(-34514i, 45928i), global3.x)));
    var var_2 = global2.b;
    var var_3 = global2.b;
    return (select(~var_3.a.a.x, var_3.a.a.x, global3.x) >> (var_2.a.a.x % 32u)) & var_2.a.a.x;
}

fn func_2() -> u32 {
    global2 = Struct_4(Struct_2(global2.b.a.a), Struct_3(Struct_2(global2.b.a.a & global0.a), -2147483647i));
    global2 = Struct_4(Struct_2(vec4<u32>(4294967295u, global0.a.x, global2.b.a.a.x, ~func_3(vec2<f32>(525f, -431f)))), Struct_3(global2.b.a, 1i));
    global3 = !(!vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(global3.x, false), global3.x)), any(select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(false, true)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1330f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) + -949f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f - -2076f))))));
    let var_1 = abs(_wgslsmith_sub_vec3_i32(countOneBits(~vec3<i32>(global2.b.b, u_input.b.x, 15698i)), firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, global2.b.b, 1i), vec3<i32>(82983i, 1125i, global2.b.b))))));
    return ~33942u;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_sub_i32(global2.b.b, ~11661i);
    var var_1 = true;
    var var_2 = firstTrailingBit(global0.a.wyy) >> (vec3<u32>(func_2(), 0u, global0.a.x) % vec3<u32>(32u));
    let var_3 = global4[_wgslsmith_index_u32(2786u, 32u)];
    var var_4 = vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.b << (32572u % 32u), 0i, i32(-1i) * -1i, 2147483647i), vec4<i32>(firstLeadingBit(-44096i), select(u_input.b.x, 55347i, true), 17245i, -25542i)) <= ~u_input.b.x, true, 23476u == var_2.x, any(vec3<bool>(any(vec2<bool>(true, global3.x)), true, true)));
    return Struct_4(global2.b.a, Struct_3(global2.a, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = 0u;
    let var_1 = Struct_3(global2.b.a, -2147483647i);
    global1 = array<Struct_1, 10>();
    var var_2 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-807f, _wgslsmith_f_op_f32(floor(-695f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1795f))))), 368f);
    var var_3 = var_2.x;
    let var_4 = vec3<i32>(_wgslsmith_div_i32(abs(~reverseBits(u_input.b.x)), reverseBits(max(~2147483647i, _wgslsmith_add_i32(2147483647i, -23422i)))), ~min(1i, u_input.a), -((_wgslsmith_mult_i32(1i, -48254i) & u_input.a) | _wgslsmith_div_i32(_wgslsmith_add_i32(var_1.b, u_input.a), -5363i << (0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_1.b), ~(firstLeadingBit(global2.b.a.a) >> (global2.b.a.a % vec4<u32>(32u))));
}

