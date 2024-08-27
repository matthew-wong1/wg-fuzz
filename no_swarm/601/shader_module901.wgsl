struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: vec3<u32> = vec3<u32>(53265u, 4294967295u, 0u);

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-26254i, vec4<u32>(1u, 37076u, 13908u, 1u), vec4<u32>(1u, 4294967295u, 51672u, 0u), 50519u), Struct_1(i32(-2147483648), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 56648u, 76408u, 4294967295u), 0u), Struct_1(24537i, vec4<u32>(37968u, 0u, 56463u, 21822u), vec4<u32>(1u, 0u, 20796u, 69789u), 4294967295u), Struct_1(-12190i, vec4<u32>(41632u, 1u, 0u, 28085u), vec4<u32>(45524u, 6250u, 35044u, 4294967295u), 16445u), Struct_1(-30689i, vec4<u32>(57525u, 30849u, 4294967295u, 0u), vec4<u32>(114106u, 23526u, 1u, 39612u), 49856u), Struct_1(2147483647i, vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(0u, 1u, 0u, 1u), 0u), Struct_1(17371i, vec4<u32>(4294967295u, 72931u, 71786u, 27375u), vec4<u32>(0u, 4294967295u, 4294967295u, 11256u), 47584u), Struct_1(2147483647i, vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 37484u, 58394u, 0u), 0u), Struct_1(5763i, vec4<u32>(4587u, 21845u, 26515u, 10208u), vec4<u32>(6283u, 40884u, 4294967295u, 52257u), 4294967295u), Struct_1(0i, vec4<u32>(78337u, 32549u, 15716u, 0u), vec4<u32>(96056u, 8857u, 4294967295u, 48124u), 4294967295u), Struct_1(30089i, vec4<u32>(1u, 0u, 56156u, 39914u), vec4<u32>(0u, 3598u, 3416u, 22964u), 48292u), Struct_1(-30738i, vec4<u32>(4294967295u, 23223u, 53258u, 1u), vec4<u32>(4294967295u, 1u, 1u, 67072u), 88176u), Struct_1(-15794i, vec4<u32>(55666u, 4294967295u, 4294967295u, 4532u), vec4<u32>(1u, 43196u, 4294967295u, 2851u), 44194u), Struct_1(28172i, vec4<u32>(0u, 64811u, 4294967295u, 4294967295u), vec4<u32>(7537u, 0u, 0u, 3386u), 8870u), Struct_1(2056i, vec4<u32>(4294967295u, 66549u, 1u, 2000u), vec4<u32>(4294967295u, 1u, 4294967295u, 77646u), 1u), Struct_1(0i, vec4<u32>(29429u, 16681u, 22193u, 10843u), vec4<u32>(91585u, 0u, 22193u, 0u), 8129u), Struct_1(-1i, vec4<u32>(44744u, 0u, 24503u, 4294967295u), vec4<u32>(0u, 33147u, 1u, 13066u), 4294967295u), Struct_1(17376i, vec4<u32>(13817u, 18215u, 64611u, 1u), vec4<u32>(4294967295u, 22229u, 4294967295u, 2266u), 63632u), Struct_1(2147483647i, vec4<u32>(20309u, 57396u, 5950u, 30814u), vec4<u32>(66889u, 1u, 1u, 43202u), 4294967295u), Struct_1(72599i, vec4<u32>(0u, 4294967295u, 33316u, 6357u), vec4<u32>(1u, 83768u, 63339u, 0u), 42990u));

var<private> global3: vec4<f32>;

var<private> global4: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    global0 = array<vec3<bool>, 18>();
    let var_0 = global3.x;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(firstTrailingBit(~3894u), ~(~72086u))), u_input.a.yw), 20u)];
    var var_2 = global4.yy;
    var_1 = global2[_wgslsmith_index_u32(var_1.c.x, 20u)];
    return 67763u;
}

fn func_2() -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(9039u, 20u)];
    global2 = array<Struct_1, 20>();
    var var_1 = global2[_wgslsmith_index_u32(var_0.d, 20u)];
    global1 = abs(var_0.b.wzz);
    let var_2 = !global4.x;
    return Struct_1(var_0.a, vec4<u32>(var_0.b.x, 624u, ~func_3(~vec2<u32>(4294967295u, 1u), var_2), ~u_input.a.x), max(vec4<u32>(u_input.e, select(4294967295u, ~global1.x, true), u_input.e, _wgslsmith_div_u32(~4294967295u, var_1.b.x)), var_1.b), 0u);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.wz - vec2<f32>(_wgslsmith_f_op_f32(global3.x * global3.x), -862f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zy))))));
    let var_1 = 17877u < arg_1.c.x;
    var var_2 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_1.a, abs(arg_0 >> (u_input.e % 32u))), ~(vec2<i32>(-2147483647i, ~(-1i)) >> (~vec2<u32>(0u, arg_1.b.x) % vec2<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(abs(-20381i), -u_input.d.x));
    var var_3 = u_input.d.x;
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(abs(~27395u), func_3(countOneBits(vec2<u32>(arg_1.c.x, 4294967295u)), arg_1.a <= -1i), u_input.b, _wgslsmith_mult_u32(global1.x, u_input.e)), vec4<u32>(arg_1.b.x, u_input.a.x, ~(~u_input.e), arg_1.d), var_1), vec4<u32>(_wgslsmith_mod_u32(reverseBits(1u), firstTrailingBit(max(0u, 4294967295u))), 1u << ((u_input.b << (_wgslsmith_div_u32(arg_1.c.x, 14108u) % 32u)) % 32u), 60478u, 4294967295u ^ _wgslsmith_add_u32(1u, arg_1.b.x))), 18u)];
    return Struct_1(arg_1.a, arg_1.b, select(max(max(~arg_1.b, firstTrailingBit(vec4<u32>(arg_1.b.x, 4657u, 32227u, global1.x))), ~vec4<u32>(global1.x, 1u, arg_1.b.x, u_input.b)), ~(~vec4<u32>(0u, arg_1.c.x, 81710u, 32688u)) & (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.c.x, global1.x, u_input.e, 6899u), vec4<u32>(4294967295u, arg_1.d, 4294967295u, 0u)) ^ u_input.a), all(select(select(vec4<bool>(false, true, global4.x, false), vec4<bool>(true, global4.x, true, true), false), vec4<bool>(global4.x, true, var_1, global4.x), global4.x))), ~_wgslsmith_mod_u32(arg_1.c.x, _wgslsmith_add_u32(arg_1.c.x, u_input.e)));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = func_4(-24893i, func_2());
    let var_1 = arg_0;
    var var_2 = func_4(~(_wgslsmith_sub_i32(~(-1i), ~arg_0.a) ^ arg_0.a), global2[_wgslsmith_index_u32(1u, 20u)]);
    let var_3 = Struct_1(u_input.d.x, vec4<u32>(~firstTrailingBit(~21443u), ~0u, ~_wgslsmith_div_u32(func_4(u_input.c.x, var_0).c.x, _wgslsmith_add_u32(42842u, 39515u)), _wgslsmith_div_u32(30432u, min(var_2.c.x, var_0.c.x))), ~func_2().b, ~(~func_4(-1i, global2[_wgslsmith_index_u32(var_1.d, 20u)]).c.x));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(472f, global3.x, 549f, -1730f)))))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, global3.x)) * _wgslsmith_f_op_f32(-1000f * -470f)), _wgslsmith_f_op_f32(trunc(1236f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(-743f - global3.x))), _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, _wgslsmith_f_op_f32(abs(-1510f)), _wgslsmith_f_op_f32(global3.x + -809f), _wgslsmith_f_op_f32(global3.x - -120f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 20>();
    var var_0 = -u_input.c.yz;
    global3 = _wgslsmith_f_op_vec4_f32(func_1(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~global1.x), 1u), 20u)]));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, reverseBits(_wgslsmith_mult_vec4_u32(firstTrailingBit(u_input.a), vec4<u32>(49851u, global1.x, 1u, 39415u)) | abs(u_input.a))), 20u)];
    let var_2 = global0[_wgslsmith_index_u32(global1.x, 18u)];
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-2342f + 1564f), global3.x);
    let var_4 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1.a, var_1.a), -12055i);
    let var_5 = _wgslsmith_add_vec3_i32(u_input.d.xwy, ~vec3<i32>(var_0.x, -(~(-44115i)), reverseBits(func_2().a)));
    global3 = vec4<f32>(global3.x, -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-455f - -940f) - _wgslsmith_f_op_f32(step(1504f, 639f)))))), _wgslsmith_f_op_f32(global3.x + global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a.wxx), u_input.d, ~max(vec2<i32>(-1i) * -var_5.yy, select(vec2<i32>(1i, -1i), vec2<i32>(var_0.x, var_4), true) >> (func_2().c.wy % vec2<u32>(32u))), _wgslsmith_sub_u32(global1.x << (min(4294967295u, func_2().b.x) % 32u), var_1.c.x));
}

