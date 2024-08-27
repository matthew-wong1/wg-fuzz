struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<i32>(-1i, i32(-2147483648)), vec4<bool>(true, true, false, false)), Struct_2(vec2<i32>(2147483647i, 31097i), vec4<bool>(false, true, false, true)), Struct_2(vec2<i32>(11230i, i32(-2147483648)), vec4<bool>(false, true, false, true)), Struct_2(vec2<i32>(1i, 2147483647i), vec4<bool>(true, false, false, false)), Struct_2(vec2<i32>(-88510i, 11419i), vec4<bool>(false, true, false, false)), Struct_2(vec2<i32>(-32407i, -26968i), vec4<bool>(true, true, true, false)), Struct_2(vec2<i32>(-58442i, 35756i), vec4<bool>(false, true, false, true)), Struct_2(vec2<i32>(16793i, 49318i), vec4<bool>(true, false, true, true)), Struct_2(vec2<i32>(1i, -29820i), vec4<bool>(true, true, false, false)), Struct_2(vec2<i32>(-30329i, i32(-2147483648)), vec4<bool>(false, true, false, false)), Struct_2(vec2<i32>(-16475i, -13489i), vec4<bool>(false, true, true, false)), Struct_2(vec2<i32>(37417i, 1i), vec4<bool>(false, true, true, true)), Struct_2(vec2<i32>(17661i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_2(vec2<i32>(14391i, 17856i), vec4<bool>(true, true, false, false)), Struct_2(vec2<i32>(-27019i, -57605i), vec4<bool>(true, false, false, false)), Struct_2(vec2<i32>(2147483647i, 0i), vec4<bool>(false, false, true, true)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec2<i32> {
    global0 = Struct_1(~(max(u_input.e, abs(u_input.e)) ^ _wgslsmith_clamp_vec3_u32(~u_input.e, firstTrailingBit(vec3<u32>(4294967295u, global0.a.x, 17502u)), vec3<u32>(26309u, u_input.e.x, u_input.d) >> (global0.a % vec3<u32>(32u)))), global0.b);
    global0 = Struct_1(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(global0.a.x, global0.a.x, 13373u)), ~_wgslsmith_clamp_vec3_u32(abs(u_input.e), vec3<u32>(15282u, 3837u, global0.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(48745u, 49686u, 6860u), global0.a, vec3<u32>(global0.a.x, global0.a.x, 1u)))), false);
    let var_0 = Struct_2(u_input.b, select(select(!(!vec4<bool>(global0.b, true, true, global0.b)), select(select(vec4<bool>(global0.b, global0.b, true, global0.b), vec4<bool>(true, global0.b, true, false), global0.b), select(vec4<bool>(global0.b, global0.b, false, global0.b), vec4<bool>(true, global0.b, true, global0.b), vec4<bool>(global0.b, global0.b, global0.b, global0.b)), select(vec4<bool>(true, global0.b, global0.b, false), vec4<bool>(true, global0.b, true, true), global0.b)), !select(vec4<bool>(true, true, global0.b, true), vec4<bool>(global0.b, true, global0.b, global0.b), vec4<bool>(global0.b, global0.b, global0.b, false))), select(vec4<bool>(global0.b & global0.b, global0.b, global0.b & true, true), select(select(vec4<bool>(global0.b, global0.b, true, true), vec4<bool>(false, global0.b, false, global0.b), global0.b), !vec4<bool>(global0.b, true, global0.b, false), !vec4<bool>(true, global0.b, true, global0.b)), vec4<bool>(false, true, global0.b, any(vec4<bool>(global0.b, true, true, global0.b)))), global0.b));
    global0 = Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(17257u, global0.a.x, global0.a.x ^ 83336u), vec3<u32>(~firstLeadingBit(u_input.d), 6998u, ~(~1u))), -select(abs(26401i), u_input.c.x << (global0.a.x % 32u), global0.b | false) < (u_input.a << (global0.a.x % 32u)));
    global0 = Struct_1(vec3<u32>(~(~abs(1u)), u_input.d, min(26705u, 1u)), any(vec3<bool>(false, all(select(var_0.b, var_0.b, vec4<bool>(false, var_0.b.x, global0.b, var_0.b.x))), select(u_input.e.x >= 4294967295u, select(var_0.b.x, true, var_0.b.x), var_0.b.x))));
    return -(~u_input.c.zx);
}

fn func_2() -> vec4<u32> {
    var var_0 = firstLeadingBit(~(_wgslsmith_mult_vec2_i32(min(vec2<i32>(0i, u_input.c.x), u_input.c.zz), u_input.c.zy) | select(_wgslsmith_div_vec2_i32(u_input.c.zz, u_input.c.yx), max(u_input.c.yx, vec2<i32>(u_input.c.x, -5729i)), !global0.b)));
    let var_1 = func_3(_wgslsmith_f_op_f32(-1f));
    let var_2 = ~abs(min(1u, global0.a.x & u_input.d));
    var var_3 = 1u;
    var var_4 = Struct_1(~((countOneBits(u_input.e) << (~global0.a % vec3<u32>(32u))) << (vec3<u32>(~global0.a.x, u_input.e.x, ~4294967295u) % vec3<u32>(32u))), all(select(!vec3<bool>(global0.b, global0.b, global0.b), select(!vec3<bool>(true, global0.b, global0.b), vec3<bool>(true, true, global0.b), vec3<bool>(true, true, true)), false)));
    return firstLeadingBit(~firstLeadingBit(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.e.x, global0.a.x, u_input.e.x, global0.a.x)), vec4<u32>(var_4.a.x, global0.a.x, 1u, 16847u))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    global1 = array<Struct_2, 16>();
    let var_0 = abs(func_2());
    global1 = array<Struct_2, 16>();
    var var_1 = 8176i;
    let var_2 = Struct_1(~(~max(vec3<u32>(4294967295u, global0.a.x, 1u), firstLeadingBit(global0.a))), !(1u > global0.a.x));
    return vec3<u32>(u_input.e.x, 1u, 27196u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.b, !(!(!select(vec4<bool>(global0.b, true, false, global0.b), vec4<bool>(false, global0.b, global0.b, global0.b), global0.b))));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, 62090u, ~(~37827u)), firstLeadingBit(~func_1(global0.a.x, global1[_wgslsmith_index_u32(~10489u, 16u)], global1[_wgslsmith_index_u32(~u_input.d, 16u)], Struct_2(var_0.a, vec4<bool>(var_0.b.x, global0.b, var_0.b.x, false)))));
    let var_2 = vec2<i32>(u_input.c.x, abs(0i));
    var var_3 = !var_0.b;
    var_3 = !select(select(var_0.b, select(var_0.b, vec4<bool>(true, var_0.b.x, true, false), !var_0.b.x), true), vec4<bool>(true, _wgslsmith_mult_u32(var_1.x, global0.a.x) < _wgslsmith_add_u32(u_input.e.x, 1u), true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), !var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-2147483647i, -2147483647i, u_input.b.x)), min(-23877i, var_2.x)), vec2<i32>(func_3(463f).x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_2.x, var_0.a.x), vec3<i32>(var_0.a.x, u_input.c.x, -1i))))), ~_wgslsmith_add_u32(u_input.d, global0.a.x));
}

