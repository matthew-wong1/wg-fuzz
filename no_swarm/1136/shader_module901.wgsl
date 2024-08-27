struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 58632u, 1u);

var<private> global2: i32 = -76723i;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(1i, i32(-2147483648));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = true;
    var var_1 = Struct_1(reverseBits(~global3.a | select(arg_2.a, firstLeadingBit(arg_0.a), var_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(~46790i >> (~u_input.b % 32u), firstLeadingBit(-2147483647i), 1i, global4.a), ~vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), global3.a, -1i, -arg_3.a)));
    global4 = Struct_1(-var_1.a, arg_2.b);
    let var_2 = any(select(select(!select(vec4<bool>(var_0, true, false, false), vec4<bool>(var_0, true, false, false), vec4<bool>(true, var_0, var_0, true)), !(!vec4<bool>(false, var_0, true, var_0)), select(select(vec4<bool>(var_0, true, false, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0)), select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, var_0, true, var_0)), true)), select(!select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, var_0, true, true), vec4<bool>(var_0, true, true, var_0)), vec4<bool>(any(vec3<bool>(var_0, var_0, false)), true, all(vec3<bool>(var_0, var_0, false)), var_0), var_0), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_0, true)), select(vec2<bool>(true, true), vec2<bool>(var_0, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), vec2<bool>(true, false))))));
    global4 = arg_0;
    return select(select(vec3<bool>(var_2, false, true), select(select(vec3<bool>(true, false, false), !vec3<bool>(false, var_0, true), select(vec3<bool>(var_2, true, true), vec3<bool>(true, true, true), vec3<bool>(false, var_0, var_0))), vec3<bool>(var_2 && var_2, all(vec2<bool>(false, true)), true), any(select(vec3<bool>(var_2, true, var_0), vec3<bool>(false, var_2, true), false))), select(any(select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(true, var_0, var_2, var_2), vec4<bool>(true, var_2, var_2, var_2))), all(vec3<bool>(var_0, true, false)), true)), select(vec3<bool>(all(!vec3<bool>(true, true, var_2)), true | !var_0, true), vec3<bool>(false, var_2 | var_0, var_0), vec3<bool>(reverseBits(5819u) < (4294967295u | u_input.b), any(vec4<bool>(true, var_0, true, var_2)), select(var_0, true, true))), any(vec4<bool>(all(vec2<bool>(true, true)), any(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, var_2))), true, all(select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_0), vec2<bool>(var_2, false))))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> bool {
    global0 = array<vec3<f32>, 28>();
    let var_0 = any(select(vec3<bool>(true, true, true), func_3(Struct_1(u_input.a, 0i), arg_0, Struct_1(u_input.c.x, arg_0.b), Struct_1(0i, -1i)), func_3(Struct_1(global3.b, global4.b), arg_0, arg_0, Struct_1(-768i, 2147483647i)))) == true;
    let var_1 = Struct_1(countOneBits(u_input.c.x >> (~arg_1 % 32u)), -(_wgslsmith_mult_i32(-31748i, _wgslsmith_mult_i32(global4.a, 5985i)) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.b, arg_0.b, 1i, -1i), vec4<i32>(global4.b, global4.b, -1i, global4.a)), vec4<i32>(22856i, -5769i, 1i, 1i))));
    global4 = Struct_1(-arg_0.b, countOneBits(~(~_wgslsmith_sub_i32(global4.a, global3.b))));
    return all(!(!(!vec2<bool>(var_0, var_0))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = !select(vec4<bool>(true, true, true, !func_2(arg_0, 12167u, 1000f)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, any(vec3<bool>(false, true, false))), vec4<bool>(true, all(vec2<bool>(false, true)), true, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false))));
    global2 = arg_0.a;
    let var_1 = Struct_1(~(arg_0.a & -29774i) >> (_wgslsmith_mod_u32(~u_input.b | u_input.b, 2604u) % 32u), 2147483647i);
    let var_2 = var_0.x;
    global2 = _wgslsmith_div_i32(-2147483647i, ~(-(global3.b >> (global1.x % 32u))) ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global3.a, var_1.a, u_input.a), vec4<i32>(12583i, -43397i, global3.b, global3.a) << (vec4<u32>(u_input.b, 1u, 27253u, u_input.b) % vec4<u32>(32u))));
    return -34245i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    let var_1 = Struct_1(firstTrailingBit(~(-1i)) ^ (-2147483647i & global3.a), func_1(Struct_1(global3.b, countOneBits(global3.a))));
    let var_2 = vec3<bool>(-2147483647i >= _wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.b, var_1.a, -2147483647i), vec3<i32>(1i, global4.a, var_1.a)), ~(-49280i))), countOneBits(0u) != u_input.b, -max(var_1.b, global3.b) != 2147483647i);
    let var_3 = -vec2<i32>(-(global4.a & 0i), i32(-1i) * -1i);
    global3 = Struct_1(var_1.a, ~countOneBits(~(u_input.a & 12858i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~u_input.b);
}

