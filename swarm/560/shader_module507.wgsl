struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(24841u, 71200u, 0u), vec3<u32>(60243u, 4294967295u, 1u), vec3<u32>(0u, 56157u, 4294967295u), vec3<u32>(31287u, 28378u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(44680u, 5979u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(51901u, 1u, 1u), vec3<u32>(59471u, 29611u, 12930u), vec3<u32>(25274u, 0u, 1u), vec3<u32>(4294967295u, 40199u, 58987u), vec3<u32>(0u, 55569u, 0u), vec3<u32>(27752u, 4294967295u, 50129u), vec3<u32>(0u, 38616u, 43345u), vec3<u32>(0u, 1u, 9271u), vec3<u32>(0u, 0u, 52308u), vec3<u32>(14740u, 4294967295u, 1u));

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, false, false, true, true, false, true, true, false, false, true, false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    global1 = array<bool, 15>();
    let var_1 = u_input.e ^ _wgslsmith_div_u32(~7172u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_2.a, 79806u), _wgslsmith_div_u32(var_0.a, var_0.a)), 17u)], ~vec3<u32>(53720u, 3886u, 1u)));
    global1 = array<bool, 15>();
    let var_2 = var_0;
    return var_0.d;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_1(~4294967295u, ~(arg_1 << ((46843u & arg_2.x) % 32u)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1110f + 690f) - _wgslsmith_f_op_f32(ceil(-1000f))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(977f - _wgslsmith_f_op_f32(f32(-1f) * -517f))))), u_input.d);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2047f);
    var_1 = _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(1u, 15u)], var_0.c.x, Struct_1(0u >> (~(arg_2.x & arg_2.x) % 32u), _wgslsmith_div_i32(~1i, countOneBits(2147483647i)), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(min(var_0.d, 1568f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + -1213f) - _wgslsmith_f_op_f32(round(var_0.d)))), vec2<i32>(~var_0.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(-33024i, var_0.e.x, -41788i), vec3<i32>(u_input.c, var_0.e.x, 0i) ^ vec3<i32>(-1i, 0i, 1i))))));
    var var_2 = ((max(vec4<i32>(-5335i, 2147483647i, -36175i, arg_1), vec4<i32>(-5937i, var_0.e.x, var_0.b, 1i) & vec4<i32>(var_0.b, u_input.d.x, var_0.b, -45423i)) >> ((~vec4<u32>(52838u, 4294967295u, var_0.a, var_0.a) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(47988u, 4294967295u, 4294967295u, u_input.b), vec4<u32>(1u, 0u, arg_2.x, u_input.b), vec4<u32>(1u, 1u, 0u, arg_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (countOneBits(~(vec4<u32>(u_input.e, 1u, u_input.b, u_input.b) | vec4<u32>(0u, u_input.b, var_0.a, 1701u))) % vec4<u32>(32u))) & select(~min(select(vec4<i32>(-16450i, 0i, u_input.c, arg_1), vec4<i32>(-4787i, -2147483647i, 0i, arg_1), false), firstTrailingBit(vec4<i32>(arg_1, -2147483647i, 28218i, 849i))), -(~vec4<i32>(-1i, u_input.d.x, var_0.b, u_input.c) << (reverseBits(vec4<u32>(arg_2.x, var_0.a, arg_2.x, 13949u)) % vec4<u32>(32u))), select(select(!vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(747u, 15u)]), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 15u)], true, var_0.c.x, var_0.c.x), select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(true, true, true, var_0.c.x), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 15u)], arg_0.x, var_0.c.x, false))), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(31313u, 15u)], false, true), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), u_input.e < 44917u), !(!global1[_wgslsmith_index_u32(32834u, 15u)])));
    global1 = array<bool, 15>();
    return select(vec2<bool>(true, select(var_0.c.x, true, true)), !arg_0, select(vec2<bool>(any(select(vec2<bool>(false, false), var_0.c, vec2<bool>(arg_0.x, false))), true), !(!var_0.c), all(var_0.c)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = arg_1.d;
    var var_1 = Struct_1(arg_1.a, arg_1.b ^ -max(arg_1.e.x, countOneBits(arg_1.b)), vec2<bool>(-1000f < _wgslsmith_div_f32(arg_1.d, 466f), false), -1564f, max(_wgslsmith_div_vec2_i32(u_input.d, firstTrailingBit(u_input.d)), -arg_1.e << (vec2<u32>(1744u, arg_1.a) % vec2<u32>(32u))) | vec2<i32>(arg_1.b, arg_1.e.x));
    global1 = array<bool, 15>();
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.e.x, countOneBits(i32(-1i) * -2147483647i)), ~vec2<i32>(1i, 2147483647i));
    var_0 = 1264f;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(843f, _wgslsmith_f_op_f32(floor(var_1.d))), vec2<f32>(var_1.d, _wgslsmith_f_op_f32(floor(-1279f))))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.d, arg_1.d))))))));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1248f) * _wgslsmith_div_f32(-622f, -440f)), _wgslsmith_f_op_f32(f32(-1f) * -189f)), _wgslsmith_f_op_vec2_f32(func_4(func_2(vec2<bool>(true, true), -1i & u_input.c, ~vec3<u32>(67109u, u_input.b, 2670u)), Struct_1(1u, u_input.a.x, vec2<bool>(true, true), _wgslsmith_f_op_f32(-476f * -756f), vec2<i32>(u_input.a.x, -15011i))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-974f, 403f), vec2<f32>(-692f, -1023f), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 15u)]))))), _wgslsmith_f_op_vec2_f32(func_4(func_2(vec2<bool>(true, true), u_input.a.x, vec3<u32>(u_input.b, 7200u, 0u)), Struct_1(~6693u, ~u_input.c, vec2<bool>(true, global1[_wgslsmith_index_u32(116996u, 15u)]), 326f, vec2<i32>(u_input.c, u_input.d.x)))), all(vec4<bool>(true, false & global1[_wgslsmith_index_u32(63100u, 15u)], true, false)))));
    var var_1 = vec2<bool>(all(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(60143u, 15u)], false, global1[_wgslsmith_index_u32(8101u, 15u)]), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], false, global1[_wgslsmith_index_u32(10800u, 15u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 15u)], false, true)), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(51863u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)]), select(true, global1[_wgslsmith_index_u32(u_input.e, 15u)], global1[_wgslsmith_index_u32(u_input.e, 15u)]) & false)), false);
    global1 = array<bool, 15>();
    global1 = array<bool, 15>();
    let var_2 = Struct_1(~u_input.e, ~u_input.d.x, !(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1564f * 1957f)))), u_input.d);
    return vec4<bool>(func_2(select(select(var_2.c, select(var_2.c, var_2.c, global1[_wgslsmith_index_u32(4294967295u, 15u)]), true && var_1.x), !select(var_2.c, vec2<bool>(false, false), var_2.c), var_2.c), -var_2.e.x, abs(~global0[_wgslsmith_index_u32(var_2.a, 17u)])).x, false, all(select(vec4<bool>(true, !var_1.x, select(true, true, false), all(vec3<bool>(var_1.x, var_1.x, true))), select(!vec4<bool>(false, var_1.x, false, var_1.x), select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(global1[_wgslsmith_index_u32(var_2.a, 15u)], true, true, true), true), -2147483647i > var_2.e.x), !var_1.x)), all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_2.c.x, var_1.x, false, var_2.c.x), vec4<bool>(false, global1[_wgslsmith_index_u32(var_2.a, 15u)], true, true), vec4<bool>(var_2.c.x, global1[_wgslsmith_index_u32(var_2.a, 15u)], true, true)), vec4<bool>(var_2.c.x, true, false, false), !vec4<bool>(global1[_wgslsmith_index_u32(76855u, 15u)], true, var_2.c.x, var_2.c.x)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(3151u, 15u)], false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, var_2.c.x, var_1.x)), !vec4<bool>(var_2.c.x, false, var_2.c.x, var_1.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(abs(select(-u_input.a.x, ~1i, global1[_wgslsmith_index_u32(54935u, 15u)])), ~u_input.d.x, abs(i32(-1i) * -u_input.c), u_input.d.x), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, -1i) >> (vec4<u32>(6449u, 1u, 4395u, u_input.e) % vec4<u32>(32u)), -vec4<i32>(u_input.c, 45717i, -27186i, 22489i)) | vec4<i32>(-1i, u_input.a.x & u_input.a.x, u_input.c, 23049i));
    global1 = array<bool, 15>();
    global1 = array<bool, 15>();
    let var_1 = func_1();
    global0 = array<vec3<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(37070u, u_input.e, _wgslsmith_mult_u32(55433u, ~u_input.e)) | select(vec3<u32>(u_input.b, u_input.b, ~u_input.b), vec3<u32>(_wgslsmith_div_u32(u_input.e, u_input.e), ~u_input.e, 0u | u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(4294967295u, u_input.e), ~92580u), 15u)]), ~(~((u_input.b >> (41078u % 32u)) ^ _wgslsmith_mult_u32(u_input.b, u_input.b))), ~_wgslsmith_add_u32(~u_input.b, u_input.b), countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-3119i, var_0.x, 2147483647i, 0i), vec4<i32>(var_0.x, var_0.x, -36724i, var_0.x)), vec4<i32>(-17381i, 2147483647i, 4301i, var_0.x)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(var_0.x, 20096i, 0i, u_input.c), vec4<i32>(-2147483647i, var_0.x, u_input.a.x, var_0.x)), max(vec4<i32>(var_0.x, var_0.x, u_input.a.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 1i, u_input.d.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -789f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f), 426f))));
}

