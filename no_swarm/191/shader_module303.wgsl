struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(0u, 0u), Struct_3(20410u, 1u), Struct_3(16870u, 4294967295u), Struct_3(53948u, 0u), Struct_3(1u, 1398u), Struct_3(1u, 5660u), Struct_3(0u, 37066u), Struct_3(7383u, 1u), Struct_3(4294967295u, 48793u), Struct_3(4294967295u, 12436u), Struct_3(4294967295u, 4294967295u), Struct_3(28431u, 70174u), Struct_3(29678u, 96429u), Struct_3(4294967295u, 3562u), Struct_3(1u, 0u), Struct_3(4294967295u, 772u), Struct_3(4294967295u, 1u));

var<private> global1: array<f32, 12> = array<f32, 12>(-2284f, -1360f, -183f, -1732f, 669f, -1056f, 2232f, 1322f, -664f, -1316f, -441f, -285f);

var<private> global2: Struct_2;

var<private> global3: f32 = -481f;

var<private> global4: array<u32, 11> = array<u32, 11>(14410u, 10044u, 15113u, 15762u, 8710u, 1u, 4294967295u, 13284u, 29666u, 24897u, 16040u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    global0 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(278f, global1[_wgslsmith_index_u32(arg_2.a, 12u)], global1[_wgslsmith_index_u32(30094u, 12u)], global2.c.c.x) + vec4<f32>(global1[_wgslsmith_index_u32(1u, 12u)], global2.c.c.x, global2.e.c.x, 1107f))))), vec4<f32>(_wgslsmith_f_op_f32(1539f + 631f), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], arg_2.b) ^ reverseBits(arg_2.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, global2.c.d.x, 4294967295u, global2.c.d.x), vec4<u32>(global4[_wgslsmith_index_u32(0u, 11u)], global2.e.a.x, 902u, arg_0.a)) ^ arg_0.b), 12u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(91253u, 1u), 12u)], global2.e.c.x), global1[_wgslsmith_index_u32(arg_0.a, 12u)] <= -212f));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(56004u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15120u, 11u)], 11u)], 4294967295u, global4[_wgslsmith_index_u32(global2.e.a.x, 11u)]), vec4<u32>(52914u, 107026u, 60956u, 42719u)), 11u)]), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(600f * 339f)))));
    var var_1 = global0[_wgslsmith_index_u32(41451u, 17u)];
    let var_2 = Struct_3(~(1u << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0.b, 17245u), global2.e.d.x, 1u) % 32u)), 1u);
    return ~reverseBits(~(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13837u, 11u)], 11u)] >> (92616u % 32u))) >> (reverseBits(0u) % 32u);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> vec3<u32> {
    let var_0 = ~_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.d, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(arg_2, -44847i))), ~(u_input.b >> (global2.c.a % vec2<u32>(32u)))), u_input.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(global2.e.c * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.e.c)))), _wgslsmith_f_op_vec3_f32(floor(arg_1.e.c))));
    global1 = array<f32, 12>();
    let var_2 = any(!global2.c.b);
    global0 = array<Struct_3, 17>();
    return vec3<u32>(~(~_wgslsmith_dot_vec2_u32(~global2.c.d.xx, vec2<u32>(1u, global2.c.a.x))), func_3(global0[_wgslsmith_index_u32(arg_1.c.a.x, 17u)], vec3<i32>(arg_2, _wgslsmith_add_i32(-60312i, 38534i), _wgslsmith_add_i32(arg_2, -2147483647i)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(global2.e.a.x, 4294967295u, 29724u), arg_1.e.d) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 11u)], arg_1.e.a.x), vec2<u32>(0u, 18873u)) >> (global4[_wgslsmith_index_u32(max(1u, global2.e.a.x), 11u)] % 32u)), 11u)], 17u)]), arg_1.c.d.x);
}

fn func_1() -> Struct_3 {
    var var_0 = ~65639u;
    var var_1 = global2.e;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-2272f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-823f)) - _wgslsmith_f_op_f32(-global2.e.c.x))))), global2.b, Struct_1(~(~(~var_1.d.xz)), !(!(!var_1.b)), vec3<f32>(var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.c.x), global1[_wgslsmith_index_u32(firstTrailingBit(global2.c.a.x), 12u)]), _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_mult_vec3_u32(func_2(-2184f, Struct_2(global2.c.c.x, global2.b, Struct_1(var_1.a, vec2<bool>(false, true), vec3<f32>(global2.e.c.x, global1[_wgslsmith_index_u32(10154u, 12u)], global1[_wgslsmith_index_u32(64075u, 12u)]), global2.e.d), 0i, global2.e), global2.d), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(56500u, 19661u, 1u), vec3<u32>(1u, global2.c.d.x, 0u))))), u_input.b.x, Struct_1(_wgslsmith_clamp_vec2_u32(reverseBits(u_input.c.zz), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.e.d.x, 4294967295u, 9880u), vec4<u32>(u_input.e.x, 12515u, global4[_wgslsmith_index_u32(global2.c.d.x, 11u)], 4294967295u)), var_1.d.x), vec2<u32>(var_1.a.x, ~13260u)), select(!vec2<bool>(global2.c.b.x, false), !(!global2.e.b), all(vec2<bool>(var_1.b.x, var_1.b.x))), global2.c.c, ~_wgslsmith_sub_vec3_u32(var_1.d ^ vec3<u32>(39427u, u_input.a.x, var_1.d.x), firstLeadingBit(vec3<u32>(u_input.a.x, var_1.d.x, 0u)))));
    var var_3 = ~global2.e.a.x;
    return global0[_wgslsmith_index_u32(4294967295u, 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global2.b, select(global2.b, !vec4<bool>(global2.b.x, global2.c.b.x, global2.b.x, global2.b.x), true), global2.b);
    let var_1 = func_1();
    let var_2 = Struct_2(global2.a, vec4<bool>(true, var_0.x, any(!global2.b), _wgslsmith_f_op_f32(floor(839f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(65199u, 12u)])) + global1[_wgslsmith_index_u32(var_1.a, 12u)])), Struct_1(vec2<u32>(1u, ~global4[_wgslsmith_index_u32(~35004u, 11u)]), vec2<bool>(any(var_0.wy), var_0.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a, global2.e.c.x)) * -1000f), _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(global2.e.c.x * global2.a)), -409f), ~u_input.c << (global2.c.d % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_div_i32(-2147483647i, -2340i)), global2.e);
    global2 = var_2;
    let var_3 = min(_wgslsmith_clamp_i32(17627i, global2.d, firstTrailingBit(~global2.d)), -(_wgslsmith_sub_i32(-2147483647i, var_2.d) ^ abs(abs(29773i))));
    let x = u_input.a;
    s_output = StorageBuffer(-1153f, vec4<i32>(-1i) * -select(_wgslsmith_mult_vec4_i32(vec4<i32>(-27368i, -13057i, var_2.d, u_input.d), vec4<i32>(var_2.d, -46778i, var_3, u_input.b.x)), vec4<i32>(1i, u_input.b.x, u_input.b.x, var_2.d), !var_0.x));
}

