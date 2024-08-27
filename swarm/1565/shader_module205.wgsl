struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<u32>(0u, 85243u, 1u, 20848u), Struct_1(true), -669f, Struct_1(false), Struct_1(true)), Struct_2(vec4<u32>(1u, 0u, 6856u, 1u), Struct_1(true), -246f, Struct_1(false), Struct_1(false)), Struct_2(vec4<u32>(0u, 64149u, 88969u, 0u), Struct_1(true), 1307f, Struct_1(false), Struct_1(true)), Struct_2(vec4<u32>(4137u, 36612u, 1u, 56661u), Struct_1(false), -1659f, Struct_1(false), Struct_1(true)), Struct_2(vec4<u32>(0u, 16295u, 44518u, 0u), Struct_1(false), 473f, Struct_1(true), Struct_1(false)), Struct_2(vec4<u32>(46184u, 0u, 1u, 1u), Struct_1(true), 1163f, Struct_1(true), Struct_1(false)), Struct_2(vec4<u32>(1u, 104789u, 25789u, 151084u), Struct_1(true), -889f, Struct_1(false), Struct_1(false)), Struct_2(vec4<u32>(33478u, 4294967295u, 93555u, 0u), Struct_1(false), 1159f, Struct_1(false), Struct_1(true)), Struct_2(vec4<u32>(1u, 1u, 1u, 4294967295u), Struct_1(false), 200f, Struct_1(true), Struct_1(false)), Struct_2(vec4<u32>(49433u, 58070u, 12585u, 20563u), Struct_1(false), 963f, Struct_1(true), Struct_1(false)), Struct_2(vec4<u32>(0u, 1u, 9639u, 1u), Struct_1(false), -511f, Struct_1(true), Struct_1(true)), Struct_2(vec4<u32>(18351u, 4294967295u, 6044u, 1u), Struct_1(false), 1161f, Struct_1(true), Struct_1(false)), Struct_2(vec4<u32>(41973u, 1u, 1u, 22660u), Struct_1(false), 1783f, Struct_1(true), Struct_1(true)), Struct_2(vec4<u32>(4294967295u, 26822u, 1u, 1u), Struct_1(true), -450f, Struct_1(false), Struct_1(true)), Struct_2(vec4<u32>(59676u, 1u, 0u, 1u), Struct_1(true), -1024f, Struct_1(true), Struct_1(false)), Struct_2(vec4<u32>(60401u, 1u, 0u, 0u), Struct_1(false), -337f, Struct_1(false), Struct_1(false)), Struct_2(vec4<u32>(12525u, 9630u, 0u, 4294967295u), Struct_1(false), 1178f, Struct_1(false), Struct_1(false)), Struct_2(vec4<u32>(80332u, 78134u, 0u, 0u), Struct_1(true), -309f, Struct_1(true), Struct_1(false)), Struct_2(vec4<u32>(72662u, 1u, 0u, 4294967295u), Struct_1(true), -1583f, Struct_1(false), Struct_1(false)), Struct_2(vec4<u32>(39472u, 4294967295u, 61755u, 1u), Struct_1(true), 2695f, Struct_1(false), Struct_1(true)), Struct_2(vec4<u32>(119727u, 83696u, 4294967295u, 3406u), Struct_1(false), -746f, Struct_1(true), Struct_1(true)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 33079u, 34542u), Struct_1(false), -437f, Struct_1(false), Struct_1(false)), Struct_2(vec4<u32>(4294967295u, 50454u, 458u, 72912u), Struct_1(false), -389f, Struct_1(true), Struct_1(true)), Struct_2(vec4<u32>(1u, 0u, 68681u, 0u), Struct_1(false), 118f, Struct_1(true), Struct_1(true)), Struct_2(vec4<u32>(14546u, 0u, 45728u, 20195u), Struct_1(false), -261f, Struct_1(true), Struct_1(true)), Struct_2(vec4<u32>(1u, 1u, 0u, 71282u), Struct_1(true), 233f, Struct_1(true), Struct_1(false)));

var<private> global1: Struct_4 = Struct_4(false, vec3<i32>(-17207i, 30341i, 0i), 36843u, Struct_3(Struct_2(vec4<u32>(4294967295u, 4294967295u, 44406u, 4294967295u), Struct_1(true), 287f, Struct_1(true), Struct_1(false)), 75018u, vec3<i32>(2147483647i, -1i, 16234i), Struct_1(true), Struct_2(vec4<u32>(115207u, 70950u, 24539u, 41964u), Struct_1(false), -890f, Struct_1(false), Struct_1(true))));

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<u32>(18615u, 61534u, 0u, 20137u), Struct_1(true), 1000f, Struct_1(false), Struct_1(false)), 4294967295u, vec3<i32>(-30040i, 0i, 32898i), Struct_1(true), Struct_2(vec4<u32>(7605u, 13152u, 62445u, 25752u), Struct_1(false), -264f, Struct_1(true), Struct_1(false)));

var<private> global3: array<vec3<bool>, 7>;

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 26>();
    return Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global2.e.a.x), 26u)], _wgslsmith_dot_vec3_u32(vec3<u32>(select(_wgslsmith_dot_vec2_u32(global4.ww, vec2<u32>(1u, 0u)), _wgslsmith_mult_u32(global4.x, 35514u), true), global2.b, global2.b), global1.d.a.a.wwz), -vec3<i32>(-_wgslsmith_div_i32(u_input.a.x, global1.b.x), i32(-1i) * -global1.d.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.x, 40155i, u_input.b.x), _wgslsmith_mod_vec3_i32(global1.d.c, global1.d.c))), Struct_1(~u_input.b.x <= u_input.a.x), global1.d.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_5) -> bool {
    var var_0 = arg_1;
    var var_1 = ~4294967295u;
    let var_2 = _wgslsmith_f_op_f32(ceil(global1.d.e.c));
    var var_3 = select(u_input.b, vec2<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~1i, countOneBits(9278i), 9869i), firstLeadingBit(_wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(global1.d.c.x, 0i, global2.c.x))), -1i)), all(global3[_wgslsmith_index_u32(u_input.c, 7u)]));
    let var_4 = true;
    return true;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_5((_wgslsmith_add_u32(u_input.c, u_input.c ^ 1u) & u_input.c) != (~firstLeadingBit(global4.x) | _wgslsmith_mod_u32(max(global2.e.a.x, arg_1.b), arg_1.e.a.x)));
    let var_1 = Struct_4(-513f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.c) * _wgslsmith_f_op_f32(f32(-1f) * -1169f)), arg_1.c, max(_wgslsmith_mod_u32(~1u, ~global4.x), countOneBits(global4.x)), func_1());
    let var_2 = _wgslsmith_mult_vec3_u32(firstLeadingBit(abs(global4.xyw) << (global4.wwx % vec3<u32>(32u))), ~countOneBits(vec3<u32>(_wgslsmith_mult_u32(global2.e.a.x, 10352u), 0u, _wgslsmith_sub_u32(arg_1.e.a.x, global4.x))));
    let var_3 = false;
    var var_4 = ~min(-29647i, arg_2.x);
    return Struct_2(vec4<u32>(select(_wgslsmith_add_u32(~1u, abs(arg_1.e.a.x)), global4.x, arg_1.e.d.a), 4294967295u, ~_wgslsmith_sub_u32(global1.d.b ^ 4294967295u, 0u), abs(~(~53314u))), Struct_1(all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(global2.e.d.a, var_0.a, var_3, global2.d.a), vec4<bool>(false, false, true, global1.d.a.d.a)), !vec4<bool>(var_0.a, global1.a, var_3, global1.a), select(vec4<bool>(true, global2.a.b.a, arg_0.x, var_1.d.e.d.a), vec4<bool>(false, var_3, arg_1.d.a, true), vec4<bool>(true, global2.e.b.a, global1.a, global1.d.e.e.a))))), global1.d.a.c, func_1().e.b, func_1().a.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = vec4<bool>(any(vec2<bool>(!global1.d.a.e.a, true)), global2.d.a, !global1.a, func_2(global2.a, Struct_5(global2.e.b.a)) == global2.d.a);
    var var_1 = -1000f;
    var_1 = global1.d.a.c;
    var var_2 = Struct_4(true, -global1.b, 4294967295u, Struct_3(func_3(vec3<bool>(global1.d.a.b.a, var_0.x, true), Struct_3(global2.a, _wgslsmith_clamp_u32(4294967295u, global4.x, 2380u), vec3<i32>(global2.c.x, -16540i, global2.c.x), global2.a.e, global0[_wgslsmith_index_u32(global1.d.e.a.x, 26u)]), vec2<i32>(1i, u_input.b.x)), global4.x, vec3<i32>(global2.c.x, ~select(1i, -35031i, var_0.x), global2.c.x), Struct_1(!(!global2.a.e.a)), Struct_2(~global1.d.a.a, Struct_1(false), _wgslsmith_div_f32(421f, global2.a.c), Struct_1(true), global1.d.d)));
    let x = u_input.a;
    s_output = StorageBuffer(36378u, ~1u, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.x >> (1669u % 32u), 1i, firstLeadingBit(var_2.b.x), 32633i << (global2.e.a.x % 32u)) >> ((vec4<u32>(global4.x, global1.c, 1u, global2.e.a.x) << ((var_2.d.a.a | vec4<u32>(4294967295u, u_input.c, global2.a.a.x, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.c.x, u_input.b.x, 0i, 2147483647i) ^ vec4<i32>(var_2.b.x, u_input.b.x, global1.b.x, -14840i), vec4<i32>(global2.c.x, 25941i, u_input.a.x, global1.b.x)) | ~(-u_input.a)), -vec3<i32>(-2147483647i, -25074i, 0i));
}

