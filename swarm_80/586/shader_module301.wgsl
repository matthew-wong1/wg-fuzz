struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-33042i, vec3<u32>(4294967295u, 1u, 1u)), vec4<bool>(true, true, false, true), vec2<bool>(true, false));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 28>();
    let var_0 = Struct_2(Struct_1(arg_0.a, ~(~min(vec3<u32>(u_input.b, global1.a.b.x, 5949u), global1.a.b))), select(vec4<bool>(global1.b.x, true, any(vec2<bool>(true, true)), select(global1.c.x != global1.b.x, false, false)), vec4<bool>(all(vec4<bool>(global1.b.x, true, global1.b.x, false)), false, any(!vec3<bool>(global1.b.x, false, false)), global1.c.x), vec4<bool>(!(global1.b.x | global1.b.x), select(all(vec3<bool>(global1.b.x, global1.c.x, global1.b.x)), all(vec2<bool>(false, global1.c.x)), true), !global1.b.x, global1.c.x)), global1.c);
    let var_1 = Struct_1(abs(18669i), var_0.a.b);
    let var_2 = arg_0;
    let var_3 = arg_0;
    return var_0.b.x;
}

fn func_2(arg_0: vec3<u32>) -> vec3<i32> {
    global0 = array<Struct_1, 28>();
    var var_0 = Struct_2(Struct_1(~max(10714i, u_input.a ^ global1.a.a), arg_0 >> (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.x, 1u, arg_0.x)), arg_0) % vec3<u32>(32u))), global1.b, global1.b.zx);
    global1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(-4229i, 36021i)), vec2<i32>(_wgslsmith_mult_i32(-2156i, -24764i), 0i)), ~(~vec3<u32>(u_input.b, u_input.b, global1.a.b.x))), select(!vec4<bool>(func_3(global1.a), true, true, all(global1.b)), vec4<bool>(var_0.c.x, false, false, true), var_0.b), vec2<bool>(all(!select(global1.b.wx, var_0.b.zx, false)), global1.b.x));
    var var_1 = Struct_2(Struct_1(var_0.a.a, vec3<u32>(var_0.a.b.x, 34541u, 0u)), var_0.b, select(select(!vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(global1.c.x, global1.a.a > global1.a.a), any(vec2<bool>(global1.c.x, var_0.b.x))), select(vec2<bool>(false & var_0.b.x, !var_0.c.x), global1.c, select(vec2<bool>(true, true), var_0.c, 107685u > global1.a.b.x)), var_0.b.x));
    var_1 = Struct_2(Struct_1(global1.a.a, select(~firstTrailingBit(var_0.a.b), vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 47918u, 141885u), var_0.a.b.x, u_input.b), vec3<bool>(false, true, var_0.a.b.x > 972u))), var_1.b, vec2<bool>(true, all(select(vec3<bool>(false, var_0.b.x, false), vec3<bool>(var_0.c.x, var_0.c.x, var_1.b.x), !var_1.c.x))));
    return ~(~(~vec3<i32>(12739i, -11142i | var_1.a.a, _wgslsmith_div_i32(-19980i, var_0.a.a))));
}

fn func_1() -> vec3<bool> {
    var var_0 = reverseBits(_wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), vec3<i32>(global1.a.a, u_input.a, -21243i)), _wgslsmith_div_vec3_i32(func_2(vec3<u32>(global1.a.b.x, 30495u, 43547u)), vec3<i32>(u_input.a, u_input.a, -2147483647i) | vec3<i32>(0i, 25775i, global1.a.a))) | countOneBits(vec3<i32>(func_2(global1.a.b).x, global1.a.a << (4294967295u % 32u), -2147483647i)));
    var var_1 = Struct_2(global1.a, global1.b, !select(select(global1.c, select(global1.b.ww, global1.c, vec2<bool>(true, true)), select(vec2<bool>(global1.c.x, true), global1.b.xz, vec2<bool>(true, global1.b.x))), global1.b.zx, any(vec2<bool>(global1.b.x, global1.c.x))));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32((~_wgslsmith_div_u32(u_input.b, 4294967295u) >> (_wgslsmith_sub_u32(~var_1.a.b.x, global1.a.b.x) % 32u)) ^ _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 40337u, 46339u)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_1.a.b.x, global1.a.b.x), var_1.a.b, global1.a.b))), 28u)], select(vec4<bool>(countOneBits(var_1.a.b.x) >= 42853u, global1.c.x, func_3(global1.a), !any(global1.b)), select(select(!vec4<bool>(false, var_1.b.x, global1.c.x, global1.c.x), vec4<bool>(global1.b.x, false, false, false), var_1.c.x), global1.b, (true && var_1.b.x) && true), select(var_1.b, global1.b, any(!var_1.b.zyx))), vec2<bool>(!any(vec4<bool>(true, var_1.c.x, false, var_1.c.x)), all(vec4<bool>(global1.b.x, global1.b.x, global1.c.x, true)) | global1.c.x));
    var var_3 = global1.a.b.zx;
    let var_4 = _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.a, -14835i, -16597i, var_0.x), vec4<i32>(-1i, -2147483647i, -17720i, u_input.a)), firstTrailingBit(var_1.a.a))), -countOneBits(abs(vec3<i32>(-30666i, var_0.x, var_2.a.a)))) << (vec3<u32>(~(var_1.a.b.x >> (15526u % 32u)) ^ ~global1.a.b.x, _wgslsmith_dot_vec3_u32(var_1.a.b, ~var_2.a.b >> (select(vec3<u32>(var_1.a.b.x, var_1.a.b.x, 32535u), vec3<u32>(4294967295u, 18561u, 4294967295u), var_1.b.x) % vec3<u32>(32u))), 1u) % vec3<u32>(32u));
    return !select(!vec3<bool>(all(vec4<bool>(global1.b.x, false, var_2.b.x, global1.b.x)), false, !global1.b.x), var_2.b.zwz, any(vec4<bool>(false, global1.c.x, true, global1.a.b.x <= u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = ~(vec4<i32>(abs(global1.a.a), -1i, global1.a.a, -firstTrailingBit(u_input.a)) ^ ~vec4<i32>(-u_input.a, -1i, ~u_input.a, 27644i));
    var var_2 = false;
    var var_3 = global1.a;
    var_2 = any(func_1());
    var_3 = Struct_1(_wgslsmith_dot_vec3_i32(var_1.yzw, -(_wgslsmith_mult_vec3_i32(vec3<i32>(39463i, u_input.a, 1i), var_1.zxx) & -var_1.yzx)), var_3.b << (vec3<u32>(18249u, 0u, 0u) % vec3<u32>(32u)));
    var_3 = Struct_1(~27794i, reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~var_3.b, vec3<u32>(var_3.b.x, var_0, 30434u) >> (var_3.b % vec3<u32>(32u)), ~vec3<u32>(1u, var_3.b.x, var_3.b.x)), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(var_3.b.x, 0u, 0u), var_3.b), global1.a.b, global1.a.b))));
    global1 = Struct_2(global1.a, !select(!vec4<bool>(global1.c.x, global1.c.x, false, false), vec4<bool>(0u >= global1.a.b.x, global1.b.x, any(vec4<bool>(false, true, true, false)), 17597i <= var_1.x), select(vec4<bool>(false, true, global1.c.x, false), select(vec4<bool>(false, global1.b.x, global1.c.x, global1.c.x), global1.b, false), vec4<bool>(false, global1.b.x, false, global1.c.x))), !global1.b.yy);
    let var_4 = select(var_3.a, global1.a.a, global1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.xx);
}

