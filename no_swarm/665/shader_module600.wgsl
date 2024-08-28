struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<i32> = vec4<i32>(-18822i, 0i, 22259i, 0i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = !(abs(~1u & _wgslsmith_clamp_u32(67375u, 17010u, 83713u)) == 66349u);
    let var_0 = vec2<i32>(u_input.a.x, ~(_wgslsmith_clamp_i32(~global1.x, global1.x << (4294967295u % 32u), select(global1.x, -1i, true)) | (min(18459i, global1.x) ^ 78229i)));
    var var_1 = (min(min(firstLeadingBit(1u), _wgslsmith_clamp_u32(20736u, 39375u, 4294967295u)), 1u) | select(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(5561u, 4294967295u, 0u, 60359u)), vec4<u32>(1u, 1u, 1u, 1u)), max(24150u, ~43579u), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true)))) << (~(~(~1u)) % 32u);
    var var_2 = vec4<bool>(!(!(firstTrailingBit(45402u) <= ~19074u)), all(vec3<bool>(any(vec2<bool>(true, true)), true, true)), !(!(-u_input.a.x > (-1i << (1u % 32u)))), false);
    global1 = -(vec4<i32>(~(~u_input.a.x), i32(-1i) * -1610i, _wgslsmith_dot_vec2_i32(var_0 << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), global1.xx), _wgslsmith_dot_vec2_i32(vec2<i32>(16013i, -597i), -vec2<i32>(u_input.a.x, u_input.a.x))) & reverseBits(abs(vec4<i32>(u_input.a.x, -1i, var_0.x, 2147483647i) | vec4<i32>(-70368i, 62367i, -35755i, -2147483647i))));
    return vec4<bool>(true, var_2.x, true, any(vec3<bool>(true, all(vec2<bool>(var_2.x, var_2.x)), false)));
}

fn func_2() -> Struct_5 {
    var var_0 = !select(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), func_3(), true), vec4<bool>(true, false, true, true));
    var_0 = !vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), any(var_0.yw), true & all(vec2<bool>(false, var_0.x)), var_0.x);
    global0 = var_0.x;
    let var_1 = -global1.x;
    var_0 = select(!vec4<bool>(!var_0.x, any(func_3().yww), var_0.x || false, all(vec3<bool>(false, true, var_0.x))), vec4<bool>(var_0.x, true, true, 1i != var_1), !(true && (true || (var_0.x || false))));
    return Struct_5(~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(1u, 38572u, 26488u)), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<u32>(1u, 1u, 94302u) ^ firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 19199u)), vec3<u32>(1u, 1u, 1u)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1546f, 624f))), var_1, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(908f)), -1208f, _wgslsmith_f_op_f32(f32(-1f) * -283f)), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(620f, 1239f) + vec2<f32>(-196f, -1000f)), vec2<f32>(1603f, 202f), var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-164f)))), Struct_3(~vec4<i32>(64853i, var_1, firstLeadingBit(-1i), -2147483647i)));
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2();
    global1 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, global1.x), var_0.b.b, select(u_input.a.x, -1i, false), -2147483647i), -select(vec4<i32>(2147483647i, 1i, -42600i, 5742i), var_0.c.a, true)), (_wgslsmith_div_vec4_i32(vec4<i32>(-2068i, global1.x, 0i, -4177i), vec4<i32>(71210i, -2147483647i, 0i, -2147483647i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, 1u, var_0.a.x), vec4<u32>(1u, var_0.a.x, 33839u, 0u)) % vec4<u32>(32u))) & -var_0.c.a), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(global1.x, u_input.a.x), global1.x, firstTrailingBit(_wgslsmith_clamp_i32(global1.x, global1.x, var_0.c.a.x)), 1i & max(var_0.c.a.x, global1.x)), _wgslsmith_mult_vec4_i32(var_0.c.a | var_0.c.a, var_0.c.a)));
    var var_1 = Struct_4(-2147483647i, func_2().b.c);
    let var_2 = -518f;
    var var_3 = Struct_3(~_wgslsmith_mod_vec4_i32(~(-var_0.c.a), var_0.c.a | vec4<i32>(global1.x, u_input.a.x, var_1.a, 16875i)));
    return vec4<i32>(-16579i, countOneBits(firstLeadingBit(-70860i >> (var_0.a.x % 32u)) ^ _wgslsmith_add_i32(-var_0.b.b, -4693i | u_input.a.x)), func_2().b.b, _wgslsmith_mod_i32(func_2().c.a.x, firstLeadingBit(~var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec4_i32(func_1() ^ (select(reverseBits(vec4<i32>(1i, global1.x, u_input.a.x, global1.x)), vec4<i32>(27661i, global1.x, global1.x, 2147483647i), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true)) & _wgslsmith_mult_vec4_i32(max(vec4<i32>(42377i, global1.x, u_input.a.x, -1i), vec4<i32>(global1.x, u_input.a.x, -1i, -2147483647i)), vec4<i32>(23505i, global1.x, -2147483647i, 9834i))), -((_wgslsmith_add_vec4_i32(vec4<i32>(-9503i, u_input.a.x, -1i, 17210i), vec4<i32>(2147483647i, u_input.a.x, -2147483647i, -17082i)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) ^ -(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, -36637i) & vec4<i32>(0i, u_input.a.x, global1.x, global1.x))));
    var var_0 = func_2().b;
    let var_1 = ~(45206u & ~select(1u, 67153u, true));
    let var_2 = abs(var_1);
    let var_3 = select(vec2<u32>(firstLeadingBit(1u), countOneBits(~33653u)), ~(~(~vec2<u32>(4294967295u, var_1))), !func_3().yy);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b, 2147483647i);
}

